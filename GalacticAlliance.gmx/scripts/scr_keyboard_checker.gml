if (keyboard_check_released(vk_escape)){
    game_end();
}else if (keyboard_check_released(vk_enter)){
    global.money += 5000;
}
