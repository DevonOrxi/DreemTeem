if force < forceLimit {
    force += forceGrow;
    charging = true;
} else if (!full_charge) {
    full_charge = true;
    //audio_play_sound(sound14_Fully_charged, 80, false);
}

//Vibrate
if (force >= 5 && force < 15)
{
    image_speed = 0.2;
    vibeL = 0.2;
    vibeR = 0.2;
}

if force = 15
{
    image_index = 0;
}

if (force >= 15 && force < 25)
{
    sprite_index = charge2;
    image_speed = 0.2;
    if image_index > 4
    {
        image_speed = 0;
    }
    vibeL = 0.5;
    vibeR = 0.5;
}

if force = 25
{
    image_index = 0;
}

if (force >= 25)
{
    image_speed = 0.2;
    sprite_index = charge3;
    vibeL = 1;
    vibeR = 1;
}
gamepad_set_vibration(joySlot, vibeL, vibeR);
