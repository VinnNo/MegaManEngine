if (KEYHOLD_B && press_b == 0 && slide == 0 &&
    instance_number(star_bullet1) < 1 && 
    global.starweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    press_b = 1; 
    instance_create(x,y,star_bullet1);
}

if (KEYHOLD_B && press_b == 0 && slide == 0 &&
    instance_number(star_bullet1) == 1 && 
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    press_b = 1; 
    with (star_bullet1)
    {
        if (phase == 1)
        {
        event_user(1);
        phase = 2;
        alarmdepth = 1;
        if (image_xscale == 1) hsp = movesp;
        else hsp = -movesp;
        }
    }
}
