//Sprite
image_index = 0;
image_angle = hitAngle;
sprite_index = hurt;
image_xscale = hitX;
image_yscale = hitY;
x = hitPosX;
y = hitPosY;


//On air
/*if image_angle < 270 && image_angle > 90 {
    image_yscale = -hitY;
    image_xscale = hitX;
}*/

alarm[6] = freezeTime;
gamepad_set_vibration(joySlot, 0, 0);
