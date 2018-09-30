if !startedState {
    switch state {
    case playerState.IDLE :
        enterIdle();
        break;
    case playerState.CHARGING :
        enterCharging();
        break;
    case playerState.PUNCHING :
        enterPunching();
        break;
    case playerState.CONNECT :
        enterConnect();
        break;
    case playerState.PUNCH_TO_IDLE :
        break;
    case playerState.HURTING :
        enterHurting();
        break;
    case playerState.KNOCKBACK :
        enterKnockback();
        break;
    case playerState.STUN :
        enterStun();
        break;
    case playerState.DEATH :
        enterDeath();
        break;
    case playerState.HURTING_TO_FALLING :
        break;
    case playerState.FALLING :
        enterFalling();
        break;
    case playerState.LANDING :
        enterLanding();
        break;
    case playerState.LAND_TO_IDLE :
        break;
    }
}
