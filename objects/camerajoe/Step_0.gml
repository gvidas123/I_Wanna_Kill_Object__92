/// @description Insert description here
// You can write your code in this editor

if (instance_exists(objPlayer)) {
	//================ Black ================
	{
		if (gTiming.timer >= 202 and gTiming.timer <= 217) {
			camera_set_view_angle(view_camera[0], spinAngle);
			spinAngle -= 0.1;
		}
		if (gTiming.timer >= 217 and gTiming.timer <= 231) {
			if (gTiming.timer == 217) {
				spinAngle = -1.6;
			}
			camera_set_view_angle(view_camera[0], spinAngle);
			spinAngle += 0.1;
			if (gTiming.timer == 231) {
				camera_set_view_angle(view_camera[0], 0);
			}
		}
	
		if (gTiming.timer >= 358 and gTiming.timer <= 373) {
			if (gTiming.timer == 358) {
				spinAngle = 1.6;
			}
			camera_set_view_angle(view_camera[0], spinAngle);
			spinAngle -= 0.1;
		}
		if (gTiming.timer >= 373 and gTiming.timer <= 387) {
			if (gTiming.timer == 373) {
				spinAngle = -1.6;
			}
			camera_set_view_angle(view_camera[0], spinAngle);
			spinAngle += 0.1;
			if (gTiming.timer == 387) {
				camera_set_view_angle(view_camera[0], 0);
			}
		}
		/*
		if (gTiming.timer > 435 and gTiming.timer <= 667 and gTiming.timer % 4 == 0) {
			var randX = random_range(-1, 1);
			var randY = random_range(-1, 1);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 667 and gTiming.timer <= 744) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}*/
	}

	//================ Yellow ================
	{
		if (gTiming.timer > 977 and gTiming.timer <= 982 and gTiming.timer % 2 == 0) {
			var randX = random_range(-1, 2);
			var randY = random_range(-1, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		
		}
		if (gTiming.timer == 982) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 998 and gTiming.timer <= 1003 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 1003) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 1010 and gTiming.timer <= 1015 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 1015) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer == 1344) { //me nono
			shader_set(shdBlackWhite);
		}
		if (gTiming.timer == 1365) {
			shader_reset();
		}
		/*
		if (gTiming.timer == 1229) {
			shader_set(shdBlackWhite);
		}
		if (gTiming.timer == 1250) {
			shader_reset();
		}*/
	}

	//================ Purple ================
	{
		if (gTiming.timer > 1577 and gTiming.timer <= 1582 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 1582) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 1613 and gTiming.timer <= 1618 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 1618) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 1629 and gTiming.timer <= 1634 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 1634) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
	}

	//================ Blue ================
	{
		if (gTiming.timer > 2144 and gTiming.timer <= 2149 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 2149) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 2223 and gTiming.timer <= 2228 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 2228) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 2302 and gTiming.timer <= 2307 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 2307) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 2521 and gTiming.timer <= 2571 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 2571) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 2571 and gTiming.timer <= 2577 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 1);
			var randY = random_range(-2, 1);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 2577) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 2577 and gTiming.timer <= 2583 and gTiming.timer % 2 == 0) {
			var randX = random_range(-1, 1);
			var randY = random_range(-1, 1);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
			if (gTiming.timer == 2583) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
	}

	//================ Green ================
	{
		if (gTiming.timer == 3585) {
			shader_set(shdBlackWhite);
		}
		if (gTiming.timer == 3608) {
			shader_reset();
		}
	}

	//================ Finale ================
	{
		if (gTiming.timer > 3912 and gTiming.timer <= 4540 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 1);
			var randY = random_range(-2, 1);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 4540) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}

		if (gTiming.timer > 4493 and gTiming.timer <= 4540) {
			//camera_set_view_angle(view_camera[0], (-funcParametricEasing((gTiming.timer - 4493) / 48) * 360) + 360);
			camera_set_view_angle(view_camera[0], funcParametricEasing((gTiming.timer - 4493) / 48) * 360); //4493 is the start of the if and 48 is the duration
			//spinAngle = (power(((gTiming.timer - 4493)/24) - 1, 3) + 1)*360;
			//show_debug_message("Angle");
			//show_debug_message(spinAngle);
			/*
			camera_set_view_angle(view_camera[0], spinAngle);
			spinAngle = (sin(degtorad((gTiming.timer - 4493)*1.875)))*360;
			*/
			if (gTiming.timer == 4540) {
				camera_set_view_angle(view_camera[0], 0);
			}
		}
		if (gTiming.timer > 4540 and gTiming.timer <= 5160 and gTiming.timer % 2 == 0) {
			var randX = random_range(-2, 2);
			var randY = random_range(-2, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer == 5160) {
			camera_set_view_pos(view_camera[0], startCamX, startCamY);
	
		}
		if (gTiming.timer > 5112 and gTiming.timer <= 5160) {
			camera_set_view_angle(view_camera[0], (-funcParametricEasing((gTiming.timer - 5112) / 48) * 360) + 360); //reverse version is -func + 360
			if (gTiming.timer == 5160) {
				camera_set_view_angle(view_camera[0], 0);
			}
		}/*
		if (gTiming.timer > 5160 and gTiming.timer <= 5792) {
			var randX = random_range(-3, 2);
			var randY = random_range(-3, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 5792 and gTiming.timer <= 6231) {
			var randX = random_range(-3, 3);
			var randY = random_range(-3, 3);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}*/
	
		if (gTiming.timer > 5160 and gTiming.timer <= 5385) {
			var randX = random_range(-3, 2);
			var randY = random_range(-3, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 5385-15 and gTiming.timer <= 5467-15) {
			var randX = random_range(-1, 2);
			var randY = random_range(-1, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 5467-15 and gTiming.timer <= 5792-15) {
			var randX = random_range(-3, 2);
			var randY = random_range(-3, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
	
		if (gTiming.timer == 5694) {
			scaling = 1.1;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5708) {
			scaling = 1.15;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5717) {
			scaling = 1.2;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5727) {
			scaling = 1.24;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
	
		if (gTiming.timer == 5737-10) {
			scaling = 1.2;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5744-10) {
			scaling = 1.16;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5750-10) {
			scaling = 1.12;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5756-10) {
			scaling = 1.08;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5762-10) {
			scaling = 1.04;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
		if (gTiming.timer == 5769-10) {
			scaling = 1;
			startCamX = (800 - (800 * scaling))/2;
			startCamY = (608 - (608 * scaling))/2;
			camera_set_view_size(view_camera[0], 800*scaling, 608*scaling);
			camera_set_view_pos(view_camera[0], startCamX, startCamY)
		}
	
		if (gTiming.timer > 5792-15 and gTiming.timer <= 6000-15) {
			var randX = random_range(-3, 2);
			var randY = random_range(-3, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 6000-15 and gTiming.timer <= 6085-15) {
			var randX = random_range(-1, 2);
			var randY = random_range(-1, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
		if (gTiming.timer > 6085-15 and gTiming.timer <= 6231-15) {
			var randX = random_range(-3, 2);
			var randY = random_range(-3, 2);
			camera_set_view_pos(view_camera[0], startCamX + randX, startCamY + randY);
		}
	}
}

/* Olden coden
camera_set_view_angle(view_camera[0], spinAngle);
	spinAngle = (sin(degtorad((gTiming.timer - 5160)*1.875)))*360;
