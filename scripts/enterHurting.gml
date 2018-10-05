//Sprite
image_index = 0;
image_speed = 0.2;
image_angle = hitAngle;
sprite_index = hurt;
image_xscale = hitX;
image_yscale = hitY;
if !isGrounded()
{
    x = hitPosX;
    y = hitPosY;
}

switch hitLevel {
    case 1:
    
    break;
    case 2:
    stun = true;
    hurting = false;
    break;
    case 3:
    alarm[6] = criticalTime;
    break;
}
gamepad_set_vibration(joySlot, 0, 0);
