image_speed = 0;

switch punchLevel{
    case 1:
    sprite_index = punch;
    break;
    case 2:
    sprite_index = punch2;
    break;
    case 3:
    sprite_index = punch3;
    break;
}

image_index = 3;
alarm[7] = freezeTime;
gamepad_set_vibration(joySlot, 0, 0);
