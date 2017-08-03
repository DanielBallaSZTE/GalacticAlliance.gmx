if (target == noone) {
    ids = ds_list_create();
    ids = scr_collision_circle_list(x, y, range, enemy_ufo, 0, 0);
    
    i = 0;
    
    if (ids != 0 && ds_exists(ids, ds_type_list)) {
        target = ds_list_find_value(ids, i);
        while (i < ds_list_size(ids)) {
            temp_id = ds_list_find_value(ids, i);
            if ((point_distance(temp_id.x, temp_id.y, x, y) <= range) && (temp_id.x < target.x)) {
                target = temp_id;
            }
            i++;
        }
    }
}

if (instance_exists(target)) {
    if (distance_to_point(target.x, target.y) > 150) || (target.hp <= 0){
        can_shoot = false;
        target = noone;
    }
    if (target != noone) {
        can_shoot = true;
    }
}else {
    target = noone;
    can_shoot = false;
}

if (can_shoot) {
    timer += shooting_speed;
    if (timer > 30) {
        instance_create(x, y, obj_tower_basic_shot);
//        audio_play_sound(snd_tower_basic_shot, 1, 0);
        timer =  0;
    }
}
