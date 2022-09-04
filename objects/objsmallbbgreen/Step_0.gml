/// @description Insert description here
// You can write your code in this editor
a = instance_create_depth(x,y,15,BBGreen_Trail)
a.image_xscale = 0.2;
a.image_yscale = 0.2;
a.sprite_index = BBGreenTrail;
if (group == 1 and gTiming.timer == 3844) {instance_destroy()}
if (group == 2 and gTiming.timer == 3862) {instance_destroy()}
if (group == 3 and gTiming.timer == 3879) {instance_destroy()}
a.modify = 0.2;
if (x <= 32+6 || x >= 800-32-6) direction = -direction + 180;
if (y <= 32+6 || y >= 608-32-6) direction = -direction;
if (gTiming.timer == 3585) {speed = 0;}
if (gTiming.timer == 3608) {direction = random(360); speed = 5;}
if ((gTiming.timer > 3608 && gTiming.timer < 3843) && (gTiming.timer % 24 == 0)) {
		a = funcCreation(x,y,random(360),1.5,SBGreen2,objSmallestBullet,20);
		a.image_xscale = 0.2;
		a.image_yscale = 0.2;
		a.group = choose(1,2,3);
}