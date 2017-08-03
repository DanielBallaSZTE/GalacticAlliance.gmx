if (mouse_check_button_released(mb_left)) {
    if (point_distance(mouse_x, mouse_y, x, y) < 34) {
        return true;
    }
}
