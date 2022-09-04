/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)) {
	if (gTiming.timer == 734) {
		image_speed = 1.4;
	}
	if (gTiming.timer >= 800 and gTiming.timer <= 900) {
		image_alpha -= 0.025;
	}
}



