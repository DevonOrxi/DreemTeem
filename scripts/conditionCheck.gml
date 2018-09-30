// TODO: ADD GROUND CHECK BEFORE, FOR OPTIMIZATION
switch state {
    case playerState.IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        break;
    case playerState.CHARGING :
        if (conditionForPunching()) { return playerState.PUNCHING; }
        break;
    case playerState.PUNCHING :
        if (conditionForFalling()) { return playerState.FALLING; }  
        if (conditionForIdle()) { return playerState.IDLE; }  
        break;
    case playerState.FALLING :
        if (conditionForPunching()) { return playerState.PUNCHING; }
        if (conditionForCharging()) { return playerState.CHARGING; }
        if (conditionForIdle()) { return playerState.IDLE; }
        break;
    default :
        break;
}

return state
