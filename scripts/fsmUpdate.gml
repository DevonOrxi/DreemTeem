startedState = true;

//Enable Movement
move_movement_entity(); //Refreshes position every step

switch state {
    case playerState.IDLE :
        updateIdle();
        break;
    case playerState.CHARGING :
        updateCharging();
        break;
    case playerState.PUNCHING :
        updatePunching();
        break;
    case playerState.PUNCH_TO_IDLE :
        break;
    case playerState.HURTING :
        break;
    case playerState.FALLING :
        updateFalling();
        break;
    case playerState.LANDING :
        updateLanding();
        break;
    case playerState.LAND_TO_IDLE :
        break;
    }
    

//Sprite
image_speed = 0.1;

if sprite_index != punch
{
    if angle < 270 && angle > 90 {
        image_xscale = -1;
    }
    else {
        image_xscale = 1;
    }
}

if sprite_index = punch
{
    if image_index < 3
    {   
        image_angle = angleBase;
    }
    else
    {
        image_angle = 0;
    }
    
    if angle < 270 && angle > 90 {
        image_yscale = -1;
    }
}
