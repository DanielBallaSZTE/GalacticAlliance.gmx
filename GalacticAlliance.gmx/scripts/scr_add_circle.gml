draw_sprite(spr_tower_basic_circle, 0, x, y);

draw_set_font(f_basic);
draw_set_color(c_white);
draw_text(x, y - 48, "Upgrade");

if (level == 3) {
    draw_text(x - 50, y + 70, "Level: " + string(level) + "#(MAX)");
}else {
    draw_text(x - 50, y + 70, "Level: " + string(level));
}

if (point_distance(mouse_x, mouse_y, x, y) > 150) {
    _draw_circle = false;
}

if (mouse_check_button_released(mb_right)) {
    _draw_circle = false;   
}
