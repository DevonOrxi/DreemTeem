//Punching timer
if punchTime > 0 {
    punchTime -= punchLow;
}

//Slowly Lower Vibration
if vibeL > 0 && vibeL > 0
{
    vibeL -= 0.07;
    vibeR -= 0.07;
}

gamepad_set_vibration(joySlot, vibeL, vibeR);

//Sprite
if image_index = image_number -1
{
    image_speed = 0;
}

image_angle = angleBase;
if image_angle < 270 && image_angle > 90 {
    image_yscale = -1;
    image_xscale = 1;
}
