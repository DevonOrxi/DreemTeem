// TODO: ADD GROUND CHECK BEFORE, FOR OPTIMIZATION
switch state {
    case playerState.IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForFalling()) { return playerState.FALLING; }
        break;
    case playerState.CHARGING :
        if (conditionForPunching()) { return playerState.PUNCHING; }
        if (conditionForPunching2()) { return playerState.PUNCHING2; }
        if (conditionForPunching3()) { return playerState.PUNCHING3; }
        break;
    case playerState.PUNCHING :
        break;
    case playerState.PUNCHING2 :
        break;
    case playerState.PUNCHING3 :
        if (conditionForFalling()) { return playerState.FALLING; }
        if (conditionForLanding()) { return playerState.LANDING; }
        if (conditionForConnect()) { return playerState.CONNECT; }
        break;
    case playerState.CONNECT :
        if (conditionForDisconnect()) { return playerState.FALLING; }
        break; 
     case playerState.HURTING :
        if (conditionForKnockback()) { return playerState.KNOCKBACK; }
        if (conditionForStun()) { return playerState.STUN; }
        if (conditionForCritical()) { return playerState.CRITICAL; }
        break;
     case playerState.CRITICAL :
        if (conditionForCriticalToFalling()) { return playerState.FALLING; }
        break;
    case playerState.FALLING :
        if (conditionForLanding()) { return playerState.LANDING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    case playerState.LANDING :
        if (conditionForLandingToIdle()) { return playerState.IDLE; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    default :
        break;
}

return state
