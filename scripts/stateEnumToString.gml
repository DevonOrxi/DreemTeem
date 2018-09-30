switch argument0 {
    case playerState.IDLE :
        return "IDLE";
        break;
    case playerState.CHARGING :
        return "CHARGING";
        break;
    case playerState.PUNCHING :
        return "PUNCHING";
        break;
    case playerState.PUNCH_TO_IDLE :
        return "PUNCH_TO_IDLE";
        break;
    case playerState.HURTING :
        return "HURTING";
        break;
    case playerState.KNOCKBACK :
        return "KNOCKBACK";
        break;
    case playerState.STUN :
        return "STUN";
        break;
    case playerState.DEATH :
        return "DEATH";
        break;
    case playerState.HURTING_TO_FALLING :
        return "HURTING_TO_FALLING";
        break;
    case playerState.FALLING :
        return "FALLING";
        break;
    case playerState.LANDING :
        return "LANDING";
        break;
    case playerState.CONNECT :
        return "CONNECT";
        break;
    case playerState.LAND_TO_IDLE :
        return "LAND_TO_IDLE";
        break;
    default :
        return "WRONG STATE";
        break;            
}
