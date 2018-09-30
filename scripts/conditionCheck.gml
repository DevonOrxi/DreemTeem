// TODO: ADD GROUND CHECK BEFORE, FOR OPTIMIZATION
switch state {
    case playerState.IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    case playerState.CHARGING :
        if (conditionForPunching()) { return playerState.PUNCHING; }
        if (conditionForIdleCharge()) { return playerState.IDLE; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    case playerState.PUNCHING :
        if (conditionForFalling()) { return playerState.FALLING; }  
        if (conditionForIdle()) { return playerState.IDLE; }
        if (conditionForConnect()) { return playerState.CONNECT; }
        if (conditionForHurting()) { return playerState.HURTING; }  
        break;
    case playerState.CONNECT :
        if (conditionForDisconnect()) { return playerState.FALLING; }
        if (conditionForDisconnect()) { return playerState.IDLE; }
        break; 
     case playerState.HURTING :
        if (conditionForKnockback()) { return playerState.KNOCKBACK; }
        if (conditionForStun()) { return playerState.STUN; }
        if (conditionForDeath()) { return playerState.DEATH; }
        break;
     case playerState.DEATH :
        if (conditionForDeathToFalling()) { return playerState.FALLING; }
        break;
    case playerState.FALLING :
        if (conditionForLanding()) { return playerState.LANDING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    case playerState.LANDING :
        if (conditionForIdle()) { return playerState.IDLE; }
        if (conditionForHurting()) { return playerState.HURTING; }
        break;
    default :
        break;
}

return state
