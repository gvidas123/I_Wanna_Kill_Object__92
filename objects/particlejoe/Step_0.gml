/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)) {
	//part_particles_create(global.P_System, x, y, global.Particle1, 10000); //make layer visible
	if (gTiming.timer % 10 == 0) {
		//part_particles_create(partSmallestDashTrailSystem, x, y, partSmallestDashTrailParticle, 1);
		//part_particles_create(partBBSplitTrail1System, x, y, partBBSplitTrail1Particle, 1); //make layer visible
		//part_particles_create(partBBBlackAppearParticle, x, y, partBBBlackAppearSystem, 20); //make layer visible
		//part_particles_create(partSBExplosionSystem, 400, 308, partSBExplosionParticle, 1);
		//show_debug_message(layer_get_depth("boss"));
	}
	if (gTiming.timer <= 810-delayTime and gTiming.timer % 10 == 0) {
		part_particles_create(partZoomSystem, x, y, partZoomParticle, 1);
	}
	if (gTiming.timer >= 810-delayTime and gTiming.timer < 1440-delayTime and gTiming.timer % 40 == 0) {
		part_particles_create(partYellowBGSystem, random(800), random(608), partYellowBGParticle, 10);
	}
	if (gTiming.timer >= 1460-delayTime and gTiming.timer <= 2060-delayTime and gTiming.timer % 10 == 0) {
		part_particles_create(partPurpleBGVDownSystem, xRandomize1, -10, partPurpleBGVDownParticle, 1);
		part_particles_create(partPurpleBGVUpSystem, xRandomize2, 618, partPurpleBGVUpParticle, 1);
		part_particles_create(partPurpleBGHLeftSystem, 810, yRandomize1, partPurpleBGHLeftParticle, 1);
		part_particles_create(partPurpleBGHRightSystem, -10, yRandomize2, partPurpleBGHRightParticle, 1);
		if (gTiming.timer % 50 == 0) {
			xRandomize1 += random(400);
			if (xRandomize1 >= 800) {
				xRandomize1 -= 800;
			}
			xRandomize2 += random(400);
			if (xRandomize2 >= 800) {
				xRandomize2 -= 800;
			}
			yRandomize1 += random(304);
			if (yRandomize1 >= 608) {
				yRandomize1 -= 608;
			}
			yRandomize2 += random(304);
			if (yRandomize2 >= 608) {
				yRandomize2 -= 608;
			}
		}
	}
	if (gTiming.timer >= 2060-delayTime and gTiming.timer <= 2600-delayTime and gTiming.timer % 20 == 0) {
		part_particles_create(partBlueBGSystem, xRandomize1, -10, partBlueBGParticle, 3);
		xRandomize1 += random(400);
		if (xRandomize1 >= 800) {
			xRandomize1 -= 800;
		}
	}
	if (gTiming.timer >= 2600-delayTime and gTiming.timer <= 3800-delayTime and gTiming.timer % 2 == 0) {
	
		if (gTiming.timer == 2992) {
			part_particles_clear(partGreenBGStartSystem);
			repeat(200) {
				xGreenPart = random(800);
				yGreenPart = random(618);
				part_particles_create(partGreenBGBoomSystem, xGreenPart, yGreenPart, partGreenBGBoomParticle, 1);
				part_particles_create(partGreenBGContinueSystem, xGreenPart, yGreenPart, partGreenBGContinueParticle, 1);
			}
		}
		if (gTiming.timer < 2992) {
			part_particles_create(partGreenBGStartSystem, random(800), random(618), partGreenBGStartParticle, 1);
		}
		else {
			part_particles_create(partGreenBGContinueSystem, random(800), 618, partGreenBGContinueParticle, 1);
			if (gTiming.timer % 50 == 0) {
				xRandomize2 += random(400);
				if (xRandomize2 >= 800) {
					xRandomize2 -= 800;
				}
			}
		}
	}
	if (gTiming.timer > 3912 and gTiming.timer <= 4540 and gTiming.timer % 4 == 0) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	if (gTiming.timer > 4540 and gTiming.timer <= 5160 and gTiming.timer % 2 == 0) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	if (gTiming.timer > 5160 and gTiming.timer <= 5385) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	if (gTiming.timer > 5385 and gTiming.timer <= 5467) {
		part_particles_create(partBlackZoomSystem, x, y, partBlackZoomParticle, 1);
	}
	if (gTiming.timer > 5467 and gTiming.timer <= 5792) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	if (gTiming.timer > 5792 and gTiming.timer <= 6000) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	if (gTiming.timer > 6000 and gTiming.timer <= 6085) {
		part_particles_create(partBlackZoomSystem, x, y, partBlackZoomParticle, 1);
	}
	if (gTiming.timer > 6085 and gTiming.timer <= 6231) {
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partGreenZoomSystem, x, y, partGreenZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partBlueZoomSystem, x, y, partBlueZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partYellowZoomSystem, x, y, partYellowZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
		part_particles_create(partPurpleZoomSystem, x, y, partPurpleZoomParticle, 1);
	}
	/*
	if (gTiming.timer == 203) {
		part_particles_create(partBBBlackAppearParticle, Object92.BBBlue.x, Object92.BBBlue.y, partBBBlackAppearSystem, 20);
	}
	if (gTiming.timer == 218) {
		part_particles_create(partBBBlackAppearParticle, Object92.BBYellow.x, Object92.BBYellow.y, partBBBlackAppearSystem, 20);
	}*/
	/*
	if (gTiming.timer >= 232 && gTiming.timer <= 263) {
		part_particles_create(partBBWobblyTrailSystem, Object92.BBYellow.x, Object92.BBYellow.y, partBBWobblyTrailParticle, 1);
		part_particles_create(partBBWobblyTrailSystem, Object92.BBBlue.x, Object92.BBBlue.y, partBBWobblyTrailParticle, 1);
	}
	if (gTiming.timer > 282 && gTiming.timer < 330) {
		part_particles_create(partBBWobblyTrailSystem, Object92.BBYellow.x, Object92.BBYellow.y, partBBWobblyTrailParticle, 1);
		part_particles_create(partBBWobblyTrailSystem, Object92.BBBlue.x, Object92.BBBlue.y, partBBWobblyTrailParticle, 1);
	}
	if (gTiming.timer > 424 && gTiming.timer < 667) {
		part_particles_create(partBBWobblyTrailSystem, Object92.BBYellow.x, Object92.BBYellow.y, partBBWobblyTrailParticle, 1);
		part_particles_create(partBBWobblyTrailSystem, Object92.BBBlue.x, Object92.BBBlue.y, partBBWobblyTrailParticle, 1);
		part_particles_create(partBBWobblyTrailSystem, Object92.BBPurple.x, Object92.BBPurple.y, partBBWobblyTrailParticle, 1);
		part_particles_create(partBBWobblyTrailSystem, Object92.BBGreen.x, Object92.BBGreen.y, partBBWobblyTrailParticle, 1);
	}
	if (gTiming.timer >= 667 && gTiming.timer < 750) {
		part_particles_create(partBBWobblierTrailSystem, Object92.BBYellow.x, Object92.BBYellow.y, partBBWobblierTrailParticle, 1);
		part_particles_create(partBBWobblierTrailSystem, Object92.BBBlue.x, Object92.BBBlue.y, partBBWobblierTrailParticle, 1);
		part_particles_create(partBBWobblierTrailSystem, Object92.BBPurple.x, Object92.BBPurple.y, partBBWobblierTrailParticle, 1);
		part_particles_create(partBBWobblierTrailSystem, Object92.BBGreen.x, Object92.BBGreen.y, partBBWobblierTrailParticle, 1);
	}*/



	/*
	if (gTiming.timer == 359) {
		part_particles_create(partBBBlackAppearParticle, Object92.BBGreen.x, Object92.BBGreen.y, partBBBlackAppearSystem, 20);
	}
	if (gTiming.timer == 374) {
		part_particles_create(partBBBlackAppearParticle, Object92.BBPurple.x, Object92.BBPurple.y, partBBBlackAppearSystem, 20);
	}*/



	/*
										     _|_
										      |
										     _|_
										    //_/\
										  __|  ||____
										 ////////////\
										/////////////\\
										|^^^^^^^^^^||+|
										|  # # #   ||||
										 ....    ....".
			
						Welcome to the Church of array_size
						Enjoy your stay with a variable that shouldn't exist
	*/
	if (gTiming.timer == 743) {
		var SBArray = Object92.tempArray;
		var arrr = Object92.array_size;
		var i = 0;
		repeat(arrr/3) {
			if (instance_exists(SBArray[i])) {
				part_particles_create(partSBExplosionSystem, SBArray[i].x, SBArray[i].y, partSBExplosionParticle, 1); //make layer visible
			}
			i++;
		}
	}
	if (gTiming.timer == 761) {
		var SBArray = Object92.tempArray;
		var arrr = Object92.array_size;
		var i = 0;
		repeat(arrr/2) {
			if (instance_exists(SBArray[i])) {
				part_particles_create(partSBExplosionSystem, SBArray[i].x, SBArray[i].y, partSBExplosionParticle, 1); //make layer visible
			}
			i++;
		}
	}
	if (gTiming.timer == 778) {
		var SBArray = Object92.tempArray;
		var arrr = Object92.array_size;
		var i = 0;
		repeat(arrr) {
			if (instance_exists(SBArray[i])) {
				part_particles_create(partSBExplosionSystem, SBArray[i].x, SBArray[i].y, partSBExplosionParticle, 1); //make layer visible
			}
			i++;
		}
	}
}




/*
if (gTiming.timer >= 3767 && gTiming.timer <= 3800) {
	
	var i = 0;
	repeat(array_length(Object92.tempArray)) {
		part_particles_create(partSmallestDashTrailSystem, Object92.tempArray[i].x, Object92.tempArray[i].y, partSmallestDashTrailParticle, 1);
		i++;
	}
}*/

