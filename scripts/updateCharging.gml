if force < forceLimit {
    force += forceGrow;
    charging = true;
} else if (!full_charge) {
    full_charge = true;
    audio_play_sound(sound14_Fully_charged, 80, false);
}
