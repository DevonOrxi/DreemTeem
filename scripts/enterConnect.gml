switch chargeLevel{
    case 1:
    sprite_index = contact;
    break;
    case 2:
    sprite_index = contact2;
    punchTime = 0;
    connect = false;
    bounce = true;
    break;
    case 3:
    alarm[7] = criticalTime;
    sprite_index = contact3;
    break;
}

image_speed = 0;
gamepad_set_vibration(joySlot, 0, 0);
