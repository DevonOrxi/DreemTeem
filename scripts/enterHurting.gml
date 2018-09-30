//Sprite
image_index = 0;
image_angle = 0;
image_yscale = 1;
sprite_index = hurt;

if hit = 1 {
    if hitBox1.level = 1 {
        kockback = true;
    }
    if hitBox1.level = 2 {
        stun = true;
    }
    if hitBox1.level = 3 {
        death = true;
    }
}

alarm[6] = freezeTime;
gamepad_set_vibration(joySlot, 0, 0);
