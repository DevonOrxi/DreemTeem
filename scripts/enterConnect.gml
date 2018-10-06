switch chargeLevel{
    case 1:
    sprite_index = contactSprite;
    punchTime = 0;
    connect = false;
    bounce = true;
    break;
    case 2:
    sprite_index = contact2Sprite;
    punchTime = 0;
    connect = false;
    bounce = true;
    break;
    case 3:
    alarm[7] = criticalTime;
    sprite_index = contact3Sprite;
    break;
}

image_speed = 0;
gamepad_set_vibration(joySlot, 0, 0);
