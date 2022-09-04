/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("Z")) {
	objPlayer.frozen = true;
	speed = 2;
	shake = true;
}
if (y > 200) {
	speed = 0;
	goal = true;
	shake = false;
	boomTimer++;
}

if (shake == true) {
	var randX = random_range(-2, 2);
	var randY = random_range(-2, 2);
	camera_set_view_pos(view_camera[0], 0 + randX, 0 + randY);
	//audio_play_sound(rumble,0,0);
}
else {
	camera_set_view_pos(view_camera[0], 0, 0);
}






