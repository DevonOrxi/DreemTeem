//Sprite
image_index = 0;
image_speed = 0.1;
image_angle = 0;
sprite_index = land;
var vineNum = round(random_range(0,2));

audio_play_sound(sound5_landing, 80, false);
switch vineNum {
    case 0:
        audio_play_sound(sound9_vine1, 80, false);
        break;
    case 1:
        audio_play_sound(sound10_vine2, 80, false);
        break;
    case 2:
        audio_play_sound(sound11_vine3, 80, false);
        break;
}

gamepad_set_vibration(joySlot, 0, 0);
