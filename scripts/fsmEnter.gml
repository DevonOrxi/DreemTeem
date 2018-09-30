if !startedState {
    switch state {
    case playerState.IDLE :
        break;
    case playerState.CHARGING :
        break;
    case playerState.PUNCHING :
        enterPunching();
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
}
