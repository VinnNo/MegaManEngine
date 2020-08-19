if (KEYHOLD_B && press_b == 0 && slide == 0 &&
    instance_number(napalm_bullet1) < 3 && 
    global.napalmweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    press_b = 1; 
    if (!grounded) {Fire(napalm_bullet1,14);}
    else {Fire(napalm_bullet1,14);}
    global.napalmweapon -= 1;
}
