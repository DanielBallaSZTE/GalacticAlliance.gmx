if (global.experience >= global.xp_needed){
    if (global.level == 1){
        global.xp_needed = 100;
        global.level++;
        global.skillpoints++;
        global.next_level_val = global.xp_needed - 50;
    }else {
        global.level++;
        global.skillpoints++;
        global.next_level_val = global.xp_needed*1.5 - global.xp_needed;
        global.xp_needed *= 1.5;
    }
}
