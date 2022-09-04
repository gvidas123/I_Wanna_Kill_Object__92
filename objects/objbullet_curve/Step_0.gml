/// @description Insert description here
// You can write your code in this editor
switch(mode) {
    case "linearCurve": {
        if (directionSurplus > 0) {
            direction -= 2;
            directionSurplus -= 1;
        }
        else if (directionSurplus < 0) {
            direction += 2;
            directionSurplus += 1;
        }
        break;
    }
    case "powerCurve": {
        if (directionSurplus > 0) {
            direction -= 1 + (power(1.5*directionSurplus, 1.5))/500;
            directionSurplus -= 1;
        }
        else if (directionSurplus < 0) {
            direction += 1 + (power(abs(1.5*directionSurplus), 1.5))/500;
            directionSurplus += 1;
        }
        break;
    }
    case "whoa": {
        if (directionSurplus > 0) {
            direction -= 1 + (power(1.5*directionSurplus, 1.5));
            directionSurplus -= 1;
        }
        else if (directionSurplus < 0) {
            direction += 1 + (power(abs(1.5*directionSurplus), 1.5));
            directionSurplus += 1;
        }
        break;
    }
	case "default": {
        break;
    }
	default: {
		direction -= 1;
	}
}


