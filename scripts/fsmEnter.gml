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
    case playerState.PUNCHING2 :
        enterPunching2();
        break;
    case playerState.PUNCHING3 :
        enterPunching3();
        break;
    case playerState.CONNECT :
        enterConnect();
        break;
    case playerState.BOUNCE :
        enterBounce();
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
    case playerState.CRITICAL :
        enterCritical();
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
