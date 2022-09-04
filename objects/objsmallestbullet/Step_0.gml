/// @description Insert description here
// You can write your code in this editor
if ((x <= 32) || (x >= 800-32-2)) direction = -direction + 180
if (y <= 32 || y >= 608-32-2) direction = -direction 
if (image_alpha < 1) {
	image_alpha += 0.05;
}
if (gTiming.timer == 3585) {speed = 0;}
if (gTiming.timer == 3608) {instance_destroy();}
if (gTiming.timer == 3767) {speed = 4 }
if (gTiming.timer >= 3767 and gTiming.timer <= 3773) { part_particles_create(particleJoe.partSmallestDashTrailSystem, x, y, particleJoe.partSmallestDashTrailParticle, 1)}
if (gTiming.timer == 3773) {speed = 1 }
if (gTiming.timer == 3781) {speed = 4 }
if (gTiming.timer >= 3781 and gTiming.timer <= 3792) { part_particles_create(particleJoe.partSmallestDashTrailSystem, x, y, particleJoe.partSmallestDashTrailParticle, 1)}
if (gTiming.timer == 3792) {speed = 1 }
if (gTiming.timer == 3802) {speed = 2.5 }
if (gTiming.timer == 3840) {speed = 0 }


if (group == 1 and gTiming.timer == 3844) {instance_destroy()}
if (group == 2 and gTiming.timer == 3862) {instance_destroy()}
if (group == 3 and gTiming.timer == 3879) {instance_destroy()}