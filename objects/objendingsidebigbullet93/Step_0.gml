/// @description Insert description here
// You can write your code in this editor
image_xscale = 1 - Object93.shrink;
image_yscale = 1 - Object93.shrink;

if (x >= 800 - 8 && y <= 8  ) {
	direction = 270;
	
}
if (x >= 800 - 8 && y >= 608 - 8  ) {
	direction = 180;
	
}
if (x <=  8 && y >= 608-8  ) {
	direction = 90;
	
}
if (x <= 8 && y <= 8  ) {
	direction = 0;
}
if (gTiming.timer < 4540 ) {
	if (gTiming.timer % 150 == 0) {
			repeat(2) {
			a = instance_create(x-10+random(20),y-10+random(20),objEndingSideShots);
			a.direction = point_direction(x,y,400,304) + random(10) - 5;
			a.speed = 3;
			}
	}
}
if (gTiming.timer > 4540 && gTiming.timer < 5160) {
	if (gTiming.timer % 100 == 0) {
			repeat(2) {
			a = instance_create(x-10+random(20),y-10+random(20),objEndingSideShots);
			a.direction = point_direction(x,y,400,304) + random(10) - 5;
			a.speed = 4;
			}
	}
}
if (gTiming.timer > 5160 && gTiming.timer < 5792) {
	if (gTiming.timer % 50 == 0) {
			repeat(2) {
			a = instance_create(x-10+random(20),y-10+random(20),objEndingSideShots);
			a.direction = point_direction(x,y,400,304) + random(10) - 5;
			a.speed = 5;
			}
	}
}
if (gTiming.timer > 5792 && gTiming.timer < 6231) {
	if (gTiming.timer % 50 == 0) {
			repeat(4) {
			a = instance_create(x-10+random(20),y-10+random(20),objEndingSideShots);
			a.direction = point_direction(x,y,400,304) + random(10) - 5;
			a.speed = 6;
			}
	}
}