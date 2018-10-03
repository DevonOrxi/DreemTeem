

if hit = 1 {
    if hitBox1.level = 1 {
        kockback = true;
        audio_play_sound(sound3_Hit1, 80, false);
    }
    if hitBox1.level = 2 {
        stun = true;
        audio_play_sound(sound4_Hit2, 80, false);
    }
    if hitBox1.level = 3 {
        death = true;
        audio_play_sound(sound2_estrellita_pre_critical, 80, false);
    }
}

