switch chargeLevel{
    case 1:
    sprite_index = contact;
    break;
    case 2:
    sprite_index = contact2;
    break;
    case 3:
    sprite_index = contact3;
    break;
}

image_speed = 0;
alarm[7] = freezeTime;
gamepad_set_vibration(joySlot, 0, 0);
