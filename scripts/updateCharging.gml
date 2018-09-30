if force < forceLimit {
    force += forceGrow;
    charging = true;
} else if (!full_charge) {
    full_charge = true;
    audio_play_sound(sound14_Fully_charged, 80, false);
}

//Vibrate
if (force >= 5 && force < 15)
{
    vibeL = 0.2;
    vibeR = 0.2;
}

if (force >= 15 && force < 25)
{
    vibeL = 0.5;
    vibeR = 0.5;
}

if (force >= 25)
{
    vibeL = 1;
    vibeR = 1;
}
gamepad_set_vibration(joySlot, vibeL, vibeR);
