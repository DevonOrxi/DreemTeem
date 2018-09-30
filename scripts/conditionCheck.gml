switch state {
    case playerState.IDLE :
        if (conditionForCharging()) { return playerState.CHARGING; }
        break;
    case playerState.CHARGING :
        break;
    case playerState.PUNCHING :
        break;
    case playerState.PUNCH_TO_IDLE :
        break;
    case playerState.HURTING :
        break;
    case playerState.FALLING :
        break;
    case playerState.LANDING :
        break;
    case playerState.LAND_TO_IDLE :
        break;
}

return state
