/// @description Insert description here
// You can write your code in this editor

if (bounce ==  true ) {
	if (gTiming.timer < 3912) {
		if (x <= 64 || x >= 736) direction = -direction + 180;
		if (y <= 64 || y >= 544) direction = -direction ;
	}
	else {
		if (x <= 25 || x >= 775) direction = -direction + 180;
		if (y <= 25 || y >= 583) direction = -direction ;
	}
}