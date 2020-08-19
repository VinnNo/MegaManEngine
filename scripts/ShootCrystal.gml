if (KEYHOLD_B && press_b == 0 && slide == 0 &&
    instance_number(crystal_bullet1) < 1 && 
    instance_number(crystal_bullet2) < 1 &&
    global.crystalweapon > 0 &&
    sprite_index != SPRITE_HURT &&
    hurt == 0) {
    press_b = 1; 
    if (!grounded) {Fire(crystal_bullet1,14);}
    else {Fire(crystal_bullet1,14);}
    global.crystalweapon -= 1;
}
