if (KEYHOLD_B && press_b == 0 && slide == 0 &&
    instance_number(gyro_bullet1) < 1 && 
    global.gyroweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    press_b = 1; 
    if (!grounded) {Fire(gyro_bullet1,14);}
    else {Fire(gyro_bullet1,14);}
    global.gyroweapon -= 1;
}
