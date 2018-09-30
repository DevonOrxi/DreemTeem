// TODO: ADD GROUND CHECK BEFORE, FOR OPTIMIZATION
switch state {
    case playerState.IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        break;
    case playerState.CHARGING :
        if (conditionForPunching()) { return playerState.PUNCHING; }
        if (conditionForIdleCharge()) { return playerState.IDLE; }
        break;
    case playerState.PUNCHING :
        if (conditionForFalling()) { return playerState.FALLING; }  
        if (conditionForIdle()) { return playerState.IDLE; }  
        break;
     case playerState.HURTING :
        if (conditionForHurtingToFalling()) { return playerState.HURTING_TO_FALLING; }  
        if (conditionForIdle()) { return playerState.IDLE; }  
        break;
    case playerState.FALLING :
        if (conditionForLanding()) { return playerState.LANDING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        break;
    case playerState.LANDING :
        if (conditionForIdle()) { return playerState.IDLE; }
        break;
    default :
        break;
}

return state