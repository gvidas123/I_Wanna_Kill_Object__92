/// @description Insert description here
// You can write your code in this editor
if (gTiming.timer < 6344) {
a = instance_create_depth(x,y,15,BBGreen_Trail)
a.image_xscale = 0.2;
a.image_yscale = 0.2;
a.sprite_index = BBGreenTrail;
}
if (x <= 6 || x >= 800-6) direction = -direction + 180;
if (y <= 6 || y >= 608-6) direction = -direction;

if (gTiming.timer > 5160) && gTiming.timer < 6344 {
	if (gTiming.timer % 2 == 0) {
		a = instance_create_depth(x,y,20,objSmallestBullet2);
		a.speed = 0.25;
		a.sprite_index = SBGreen2;
		a.direction = random(360);
		a.image_xscale = 0.2;
		a.image_yscale = 0.2;
	}
}
if (gTiming.timer > 5792 && gTiming.timer < 6344) {speed = 5}
else if (gTiming.timer > 6344) {speed = 0}
if (gTiming.timer > 6344) {image_alpha -= 0.0032 }
