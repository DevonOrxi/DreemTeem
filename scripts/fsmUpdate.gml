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
        break;
    case playerState.LAND_TO_IDLE :
        break;
    }
