// TODO: ADD GROUND CHECK BEFORE, FOR OPTIMIZATION
switch state {
    case playerState.IDLE :
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        break;
    case playerState.CHARGING :
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForPunching()) { return playerState.PUNCHING; }
        break;
    case playerState.PUNCHING :
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForPunchToIdle()) { return playerState.PUNCH_TO_IDLE; }
        if (conditionForFalling()) { return playerState.FALLING; }    
        break;
    case playerState.PUNCH_TO_IDLE :
        if (conditionForHurting()) { return playerState.HURTING; }        
        if (conditionForIdle()) { return playerState.IDLE; }
        break;
    case playerState.HURTING :
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForFalling()) { return playerState.FALLING; }
        if (conditionForIdle()) { return playerState.IDLE; }
        break;
    case playerState.FALLING :
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForPunching()) { return playerState.PUNCHING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForLanding()) { return playerState.LANDING; }
        break;
    case playerState.LANDING :
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForLandToIdle()) { return playerState.LAND_TO_IDLE; }
        break;
    case playerState.LAND_TO_IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForHurting()) { return playerState.HURTING; }
        if (conditionForIdle()) { return playerState.IDLE; }
        break;
}

return state
