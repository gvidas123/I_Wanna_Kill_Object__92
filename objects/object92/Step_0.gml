/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)) {
	global.global_Timer++;
	randomise();
	
	//List of changes
	//Black
	//Made black BB's have different image speeds
	//Reduced the opacity of infinityJoe
	//Yellow:
	//Slowed down bullet circles
	//Reduced amount of bullet circles
	//Changed the final attack
	//Purple:
	//Lowered the amount of bullet line circles
	//Blue:
	//Made BB's slightly visible in the fishron section
	//Reduced shotgun bullet amount
	//BB's now target the middle initially
	//Slowed down shotgun bullets
	//Sped up whoa
	//Green:
	//Reduced inital burst by 5 frames while increasing the repeat from 3 to 4
	//Cut smallest bullet count from 18 frame interval to 24
	//Slightly reduced the speed of the small bullets from 5 to 4
	
	
	
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//you may want to make all bullet_2 spawns not in the "boss" layer
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
	
	//Actuallly works below
	/*
	var bulletArray = [];
	with(all) {
		if (object_get_name(object_index) == "objBullet_2") {
			array_push(bulletArray, id);
			show_debug_message(id);
		}
	}
	*/
	
	
	
	/*
	if !layer_exists("boss")
	{
	    show_debug_message("BRO")
	}
	var a = layer_get_all_elements("boss");
	show_debug_message(array_length(a));
	var bulletArray = layer_get_all_elements("boss");
	for (var i = 2; i < array_length(bulletArray); i++) {
		show_debug_message("I'm almost in");
		show_debug_message(i);
		if (instance_exists(bulletArray[i])) {
			show_debug_message("IM IN!!!!!!!!!!!!!!!!");
			show_debug_message(i);
			bulletArray[i].speed = 0;
		}
		if layer_get_element_type(bulletArray[i]) == layerelementtype_instance {
			show_debug_message("IM IN!!!!!!!!!!!!!!!!");
			show_debug_message(i);
			bulletArray[i].speed = 0;
		}
	}*/
	//show_debug_message(a[1].speed);
	/*
	for (var i = 0; i < array_length(a); i++;)
	{
	    if layer_get_element_type(a[i]) == layerelementtype_instance
	    {
	        show_debug_message(a[20].speed);
	    }
	}*/
	
	
		
	//Misc
	{
		//Intro
		if (gTiming.timer == 30) audio_sound_set_track_position(global.currentMusic,0.6);
		//After tun tun
	    if (gTiming.timer == 100) audio_sound_set_track_position(global.currentMusic,2);
		//After 123
	    if (gTiming.timer == 802) audio_sound_set_track_position(global.currentMusic,16.04);
		//Zoom
	    if (gTiming.timer == 1350) audio_sound_set_track_position(global.currentMusic,27);
		//Pre purple
	    if (gTiming.timer == 1450) audio_sound_set_track_position(global.currentMusic,29);
		//Pre blue
	    if (gTiming.timer == 2050) audio_sound_set_track_position(global.currentMusic,41);
		//Pre green
		if (gTiming.timer == 2600) audio_sound_set_track_position(global.currentMusic,52);
	
		if(gTiming.timer == 3800)audio_sound_set_track_position(global.currentMusic,76);
	
		if (1 + 1 == 2) { // blocks
			if (gTiming.timer == 800) {
				layer_set_visible("GrayBlocks",false);
				layer_set_visible("YellowBlocks",true);
	
			} 
			if (gTiming.timer == 1460) {
				layer_set_visible("YellowBlocks",false);
				layer_set_visible("PurpleBlocks",true);
	
			}
			if (gTiming.timer == 2050) {
				layer_set_visible("PurpleBlocks",false);
				layer_set_visible("BlueBlocks",true);
	
			}
			if (gTiming.timer == 2623) {
				layer_set_visible("BlueBlocks",false);
				layer_set_visible("GreenBlocks",true);
	
			}
			if gTiming.timer == 3912 {
				layer_set_visible("GreenBlocks",false);
				layer_set_visible("GrayBlocks",false);
				layer_destroy("platforms");
				if(objPlayer.y >= 450) {
					objPlayer.vspeed = 0;
				}
				show_debug_message("aiyuhgsduiagshdugahspigudhudh");
				show_debug_message(objPlayer.y);
			}
		}
		if (gTiming.timer % 50 == 0) {
			show_debug_message(audio_sound_get_track_position(global.currentMusic));
			show_debug_message(gTiming.timer);
		}
	
		if (gTiming.timer > 779) {
			with (objPlayer){
				djump = 1;
			}
		}
	}
	
	
	//Black first 2 paths
	if (gTiming.timer >= 200 && gTiming.timer <= 350) 
	{
		if (gTiming.timer == 202) {
			BBBlue = instance_create(96,96,objBig_Bullet);
			BBBlue.image_speed = 0.5;
			BBBlue.bounce = false;
		}
		if (gTiming.timer == 203 ) {
			repeat(21) {
				a = funcSBCreationWithin(BBBlue,-random(150),3+random(7),SBBlack2,objBullet_2);
			}	
		}
		if (gTiming.timer == 217) {
			BBYellow = instance_create(704,96,objBig_Bullet);
			BBYellow.image_speed = 0.5;
			BBYellow.bounce = false;
		}
		if (gTiming.timer == 219) {
			repeat(21) {
				funcSBCreationWithin(BBYellow,-random(150)-30,3+random(7),SBBlack2,objBullet_2);
			}
		}
		if (gTiming.timer == 231) {
			with(BBBlue) {
				path_start(pthBig_Bullet_Path1_1,11,path_action_continue,true);
			}	
		}
		if (gTiming.timer > 231 && gTiming.timer < 290) {
			if (point_distance(BBBlue.x,BBBlue.y,384,288) <= 1) {
				with(BBBlue) {
					path_end();
				}
			}
		}
		if (gTiming.timer == 231) {
			with(BBYellow) {
				path_start(pthBig_Bullet_Path2_1,11,path_action_continue,true);
			}
		}
		if (gTiming.timer > 231 && gTiming.timer < 290) {
			if (point_distance(BBYellow.x,BBYellow.y,384,288) <= 1) {
				with(BBYellow) {
					path_end();
				}
			}
		}	
		if (gTiming.timer == 281) {
			with(BBBlue) {
				path_start(pthBig_Bullet_Path1_2,8,path_action_continue,true);
			}
		}
		if ( gTiming.timer > 250 && gTiming.timer < 350) {
			if (point_distance(BBBlue.x,BBBlue.y,96,512) <= 1) {
				with(BBBlue) {
					path_end();
				}
			}
		}
		if (gTiming.timer == 281) {
		with(BBYellow) {
				path_start(pthBig_Bullet_Path2_2,8,path_action_continue,true);
			}
		}
		if (gTiming.timer > 250 && gTiming.timer < 350) {
			if (point_distance(BBYellow.x,BBYellow.y,704,512) <= 1) {
				with(BBYellow) {
					path_end();
				}
			}		
		}
	}
	//Black second 2 paths and 1 2 3
	if (gTiming.timer >= 358 && gTiming.timer <= 800)
	{
		if (gTiming.timer == 358) {
			BBGreen = instance_create(96,96,objBig_Bullet);
			BBGreen.image_speed = 0.5;
			BBGreen.bounce = false;
		}
		if (gTiming.timer == 359 ) {
			repeat(18) funcSBCreationWithin(BBGreen,-random(180),random(5)+5,SBBlack2,objBullet_2);
		}
		if (gTiming.timer == 373) {
			BBPurple = instance_create(704,96,objBig_Bullet);
			BBPurple.image_speed = 0.5;
			BBPurple.bounce = false;
		}
		if (gTiming.timer == 374 ) {
			repeat(18) funcSBCreationWithin(BBPurple,-random(180),random(5)+5,SBBlack2,objBullet_2);
		}
		if (gTiming.timer == 387) {
			a = instance_create(BBBlue.x,BBBlue.y,objBulletLine);
			a.speed_ = 5;
			a.amount = 5;
			a.sprite = SBBlack2;
			a = instance_create(BBYellow.x,BBYellow.y,objBulletLine);
			a.speed_ = 5;
			a.amount = 5;
			a.sprite = SBBlack2;
			a = instance_create(BBGreen.x,BBGreen.y,objBulletLine);
			a.speed_ = 5;
			a.amount = 5;
			a.sprite = SBBlack2;
			a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
			a.speed_ = 5;
			a.amount = 5;
			a.sprite = SBBlack2;
		}
		if (gTiming.timer == 435) {
			with(BBBlue) path_start(pthBig_Bullet_Path1_3,2.2,path_action_continue,true);
			with(BBYellow) path_start(pthBig_Bullet_Path2_3,2.2,path_action_continue,true);
			with(BBGreen) path_start(pthBig_Bullet_Path3_1,4.2,path_action_continue,true);
			with(BBPurple) path_start(pthBig_Bullet_Path4_1,4.2,path_action_continue,true);
			BBYellow.image_speed = 1;
			BBBlue.image_speed = 1;
			BBPurple.image_speed = 1;
			BBGreen.image_speed = 1;
		}
		if (gTiming.timer == 667) {
			BBYellow.image_speed = 2;
			BBBlue.image_speed = 2;
			BBPurple.image_speed = 2;
			BBGreen.image_speed = 2;
		}
		if (gTiming.timer > 435 && gTiming.timer < 745 ) {
			if (gTiming.timer % 10 == 0) {
				tempArray[array_size] = funcSBCreationWithin(BBBlue,random(360),1,SBBlack2,objBullet_2);
				array_size++;
				tempArray[array_size] = funcSBCreationWithin(BBYellow,random(360),1,SBBlack2,objBullet_2);
				array_size++;
				tempArray[array_size] = funcSBCreationWithin(BBGreen,random(360),1,SBBlack2,objBullet_2);
				array_size++;
				tempArray[array_size] = funcSBCreationWithin(BBPurple,random(360),1,SBBlack2,objBullet_2);
				array_size++;
			}
		}
		if (gTiming.timer > 424 && gTiming.timer < 750) {
			if (point_distance(BBBlue.x,BBBlue.y,288,96) <= 1) {
				with(BBBlue) path_end();
			}
			if (point_distance(BBYellow.x,BBYellow.y,512,96) <= 1) {
				with(BBYellow) path_end();
			}
			if (point_distance(BBGreen.x,BBGreen.y,704,96) <= 1) {
				with(BBGreen) path_end();
			}
			if (point_distance(BBPurple.x,BBPurple.y,96,96) <= 1) {
				with(BBPurple) path_end();
			}
		}
		if (gTiming.timer == 750) {
			with(BBPurple) sprite_index = BBPurple2;
		}
		if (gTiming.timer == 771) {
			with(BBBlue) sprite_index = BBBlue2;	
		}
		if (gTiming.timer == 790) {
			with(BBYellow) sprite_index = BBYellow2;
		}
		if (gTiming.timer == 800) {
			with(BBGreen) sprite_index = BBGreen2;
		}
		if (gTiming.timer == 744) { // 1
			repeat(array_size/3) {
				array_size--;
				with(tempArray[array_size]) instance_destroy();
			}
		}
		if (gTiming.timer == 762) {// 2 25
			repeat(array_size/2) {
				array_size--;
				with(tempArray[array_size]) instance_destroy();
			}
		}
		if (gTiming.timer == 779) {// 3 14
			repeat(array_size) {
				array_size--;
				with(tempArray[array_size]) instance_destroy();
			}
		}
		//ATTACK NUMER UNO MAN 
		if (gTiming.timer == 744 || (gTiming.timer == 762) || gTiming.timer == 779 ) { 
			funcSBCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y),7,SBBlue2,objBullet_2);
			funcSBCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y)+20,7,SBBlue2,objBullet_2);
			funcSBCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y)-20,7,SBBlue2,objBullet_2);
		}
		//ATTACK NUMER DOS MAN 
		if (gTiming.timer == 744 || (gTiming.timer == 762) || gTiming.timer == 779 ) {
			randomise();
			i = random(20);
			repeat(18){
				funcSBCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,8,SBYellow2,objBullet_2);
				i+=20
			}
		}
		//ATTACK NUMER TRES MAN
		if (gTiming.timer == 744 || (gTiming.timer == 762) || gTiming.timer == 779 ) {
			a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
			a.speed_ = 9;
			a.amount = 6;
			a.interval = 2;
		}
	}	
	//Yellow
	if (gTiming.timer >= 810 && gTiming.timer <= 1440) {
		if (gTiming.timer == 810) {
			doubler = true;
			BBYellow.image_speed = 1;
			BBBlue.image_speed = 1;
			BBPurple.image_speed = 1;
			BBGreen.image_speed = 1;
			BBBlue.speed = 3;
			BBBlue.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBBlue.sprite_index = BBYellow2;
			BBBlue.bounce = true;
			BBYellow.speed = 3;
			BBYellow.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBYellow.sprite_index = BBYellow2;
			BBYellow.bounce = true;
			BBGreen.speed = 3;
			BBGreen.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBGreen.sprite_index = BBYellow2;
			BBGreen.bounce = true;
			BBPurple.speed = 3;
			BBPurple.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBPurple.sprite_index = BBYellow2;	
			BBPurple.bounce = true;
		}
	
		if (gTiming.timer >= 801  && gTiming.timer <= 1315)  {
			if ((gTiming.timer + 10) % 130 == 0) {
				randomise();
				i = random(20);
				repeat(8){
					funcSBCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,4,SBYellow2,objBullet_2);
					funcSBCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y)+i,4,SBYellow2,objBullet_2);
					funcSBCreationWithin(BBGreen,point_direction(BBGreen.x,BBGreen.y,objPlayer.x,objPlayer.y)+i,4,SBYellow2,objBullet_2);
					funcSBCreationWithin(BBPurple,point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y)+i,4,SBYellow2,objBullet_2);
					i+=45;
				}
			}
		}
		if (gTiming.timer == 977) funcCreateCircle(392,296,18,4,objBullet_2,SBYellow2);
		if (gTiming.timer == 998) funcCreateCircle(392,296,18,4,objBullet_2,SBYellow2);
		if (gTiming.timer == 1010) funcCreateCircle(392,296,18,4,objBullet_2,SBYellow2);
		if (gTiming.timer == 1131) {
			randomise();
			i = random(20);
			repeat(16){
				funcSBCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,6,SBYellow2,objBullet_2);
				funcSBCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y)+i,6,SBYellow2,objBullet_2);
				funcSBCreationWithin(BBGreen,point_direction(BBGreen.x,BBGreen.y,objPlayer.x,objPlayer.y)+i,6,SBYellow2,objBullet_2);
				funcSBCreationWithin(BBPurple,point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y)+i,6,SBYellow2,objBullet_2);;
				i+=22.5;
			}
		}
		i = 0;
		if(gTiming.timer == 1208) {
			tempArray = [];
			array_size = 0;
			var N = 0;
			repeat(72) {
				tempArray[N] = funcSBCreation(404,304,i,9,SBYellow2,objBullet_Vanishing_1);
				i += 5;
				N++;
				array_size++;
			}
		}
		if (gTiming.timer == 1229) {
			var N = 0;
			global.vanished = true;
			repeat(array_size) {
				tempArray[N].sprite_index = SBBlack2;
				tempArray[N].image_alpha = 0.25;
				N++
			}
		}
		if (gTiming.timer == 1250) {
			var N = 0;
			global.vanished = false;
			repeat(array_size) {
				tempArray[N].sprite_index = SBYellow2;
				tempArray[N].image_alpha = 1;
				N++;
			}
		}
		if (gTiming.timer == 1288) { //me nono
			funcCreateCircle(16,16,40,5,objBullet_2,SBYellow2);
			funcCreateCircle(784,16,40,5,objBullet_2,SBYellow2);
			funcCreateCircle(16,592,40,5,objBullet_2,SBYellow2);
			funcCreateCircle(784,592,40,5,objBullet_2,SBYellow2);
		}
		if (gTiming.timer >= 1327 && gTiming.timer <= 1365) {
			/*
			camera_set_view_size(view_camera[0],400,304)
			camera_set_view_pos(view_camera[0],objPlayer.x-200,objPlayer.y-152)*/
			BBBlue.speed = BBBlue.speed * 0.94;
			if (BBBlue.speed < 1) BBBlue.speed = 0;
			BBYellow.speed = BBYellow.speed * 0.94;
			if (BBYellow.speed < 1) BBYellow.speed = 0;
			BBGreen.speed = BBGreen.speed * 0.8;
			if (BBGreen.speed < 1) BBGreen.speed = 0;
			BBPurple.speed = BBPurple.speed * 0.94;
			if (BBPurple.speed < 4) BBPurple.speed = 0;
		}
		if (gTiming.timer == 1344) { //me nono
			//var bulletArray = [];
			with(all) {
				if (object_get_name(object_index) == "objBullet_2") {
					speed = 0;
				}
			}
			/*
			var bulletArray = layer_get_all_elements("boss");
			show_debug_message("BRO WHAT THE SIZE THOO");
			show_debug_message(array_length(bulletArray));
			for (var i = 2; i < array_length(bulletArray); i++) {
				show_debug_message("I'm almost in");
				show_debug_message(i);
				if (instance_exists(bulletArray[i])) {
					show_debug_message("IM IN!!!!!!!!!!!!!!!!");
					show_debug_message(i);
					bulletArray[i].speed = 0;
				}
			}*/
			BBBlue.speed = 0;
			BBYellow.speed = 0;
			BBGreen.speed = 0;
			BBPurple.speed = 0;
		}
		if (gTiming.timer == 1365) {
			with(all) {
				if (object_get_name(object_index) == "objBullet_2") {
					speed = 2;
				}
			}
			BBBlue.speed = 2;
			BBYellow.speed = 2;
			BBGreen.speed = 2;
			BBPurple.speed = 2;
		}
		if (gTiming.timer >= 1366 && gTiming.timer <= 1406) {
			BBBlue.image_alpha -= 0.025;
			BBYellow.image_alpha -= 0.025;
			BBGreen.image_alpha -= 0.025;
			BBPurple.image_alpha -= 0.025;
		}
		if (gTiming.timer == 1420) { 
			instance_destroy(BBBlue);
	
			instance_destroy(BBYellow);
			
			instance_destroy(BBGreen);
	
			instance_destroy(BBPurple);
		}
		if (gTiming.timer == 1440) {
	        with(all) {
				if (object_get_name(object_index) == "objBullet_2") {
					instance_destroy();
				}
			}
	    }
		/*
		if (gTiming.timer == 1327) { //me nono
			number = 0;
			Big_array = funcCreateEmptyCircle(objPlayer.x,objPlayer.y,200,36,objBulletEnd,SBYellow2);
			repeat (36) {
				Big_array[0][number].direction = point_direction(Big_array[0][number].x, Big_array[0][number].y,objPlayer.x,objPlayer.y); //CHECK THIS WITH "Big_array[0][number].x+16, Big_array[0][number].y-16"
				number++
			}
			number = 0
		}
		if (gTiming.timer >= 1344 && gTiming.timer <= 1420) {
			if (gTiming.timer % 2 == 1) {
				if (number < 36) {
					Big_array[0][number].speed = 9;
					number++
				}
			}
		}
		if (gTiming.timer == 1420) { 
			instance_destroy(BBBlue);
	
			instance_destroy(BBYellow);
			
			instance_destroy(BBGreen);
	
			instance_destroy(BBPurple);
		}
		if (gTiming.timer == 1440) {
	        camera_set_view_size(view_camera[0],800,608);
	        camera_set_view_pos(view_camera[0],0,0);
	    }*/
	}
	//purple
	if (gTiming.timer >= 1460 && gTiming.timer <= 2060 ) {
		if (gTiming.timer == 1460 ) {
			BBPurple = instance_create(404,304,objBig_Bullet);
			BBPurple.sprite_index = BBPurple2;
		}
		if (gTiming.timer >= 1460 && gTiming.timer < 2000) {
			if (gTiming.timer % 60 == 0) {
				funcSBCreation(144,16,270,5,SBPurple2,objBullet_2)
				funcSBCreation(656,16,270,5,SBPurple2,objBullet_2)
				funcSBCreation(16,464,0,5,SBPurple2,objBullet_2)
				funcSBCreation(784,464,180,5,SBPurple2,objBullet_2)
				funcSBCreation(16,144,0,5,SBPurple2,objBullet_2)
				funcSBCreation(784,144,180,5,SBPurple2,objBullet_2)
				funcSBCreation(656,592,90,5,SBPurple2,objBullet_2)
				funcSBCreation(144,592,90,5,SBPurple2,objBullet_2)
			}
			if (gTiming.timer % 60 == 85) {
				funcSBCreation(16,304,0,5,SBPurple2,objBullet_2)
				funcSBCreation(784,304,180,5,SBPurple2,objBullet_2)
				funcSBCreation(400,16,270,5,SBPurple2,objBullet_2)
				funcSBCreation(400,592,90,5,SBPurple2,objBullet_2)
			}
		}
		if ((gTiming.timer == 1460)) {
			instance_create(BBPurple.x,BBPurple.y,objBulletLine);
		}
		if (gTiming.timer == 1480 ) {
			instance_create(32,32,objBulletLine);
			instance_create(32,576,objBulletLine);
			instance_create(768,576,objBulletLine);
			instance_create(768,32,objBulletLine);
		}
		if (gTiming.timer == 1510){
			a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
			a.amount = 10;
			a.speed_ = 7;
		}
		if (gTiming.timer == 1560 ) {
			a = instance_create(32,32,objBulletLine);
			a.amount = 3;
			a.interval = 3;
			a = instance_create(32,576,objBulletLine);
			a.amount = 3;
			a.interval = 3;
			a = instance_create(768,576,objBulletLine);
			a.amount = 3;
			a.interval = 3;
			a = instance_create(768,32,objBulletLine);
			a.amount = 3;
			a.interval = 3;
		}
		
		if(gTiming.timer == 1577) {
			i = random(90)
				repeat (6) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = i;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = i+90;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = i+180;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = i+270;
				a.pointed_at_player = false;
				i +=15;
			}
		}
		if (gTiming.timer == 1613){
			
				h = random(90)
				repeat (6) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+90;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+180;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+270;
				a.pointed_at_player = false;
				h +=15;
			}
		}
		if (gTiming.timer == 1629) {
				repeat (6) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+90;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+180;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+270;
				a.pointed_at_player = false;
				h += 15;
			}
		}
		if (gTiming.timer == 1675) {
			a = instance_create(16,304,objBulletLine);
			a.speed_ = 6; 
			a.amount = 7;
			a.interval = 3;
			a = instance_create(784,304,objBulletLine);
			a.speed_ = 6; 
			a.amount = 7;
			a.interval = 3;
		}
		if (gTiming.timer == 1715) {
			a = instance_create(400,16,objBulletLine);
			a.speed_ = 6; 
			a.amount = 7;
			a.interval = 3;
			a = instance_create(400,592,objBulletLine);
			a.speed_ = 6; 
			a.amount = 7;
			a.interval = 3;
		
		}
		if (gTiming.timer == 1740) {
		h = random(90)
				repeat (6) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h;
				a.speed_ = 9;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+90;
				a.pointed_at_player = false;
				a.speed_ = 9;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+180;
				a.pointed_at_player = false;
				a.speed_ = 9;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+270;
				a.pointed_at_player = false;
				a.speed_ = 9;
				h += 15;
			}
		}
		if (gTiming.timer == 1758) {
			a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
			a.amount = 40;
			a.speed_ = 6;
			a.interval = 3;
		}
		if (gTiming.timer == 1831) {
			i = 16
			tempArray = [];
			array_size = 0;
			var N = 0;
			repeat(72) {
				tempArray[N] = funcSBCreation(800,i,180,13,SBBlack2,objBullet_Vanishing_1);
				tempArray[N].image_alpha = 0.25;
				i += 16;
				N++;
				array_size++;
			}
			global.vanished = true;
		}
		if (gTiming.timer == 1856) {
			var N = 0;
			repeat(array_size) {
				tempArray[N].sprite_index = SBPurple2;
				tempArray[N].image_alpha = 1;
				N++
			}
			global.vanished = false;
		}
		if (gTiming.timer == 1873) {
			var N = 0;
			repeat(array_size) {
				tempArray[N].sprite_index = SBBlack2;
				tempArray[N].image_alpha = 0.25;
				N++;
			}
			global.vanished = true;
		}
		if (gTiming.timer == 1904) {
		h = 0;
		repeat (8) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h;
				a.speed_ = 7;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+90;
				a.pointed_at_player = false;
				a.speed_ = 7;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+180;
				a.pointed_at_player = false;
				a.speed_ = 7;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+270;
				a.pointed_at_player = false;
				a.speed_ = 7;
				h += 9;
			}
		}
		if (gTiming.timer == 1929) {
			h = 4;
			repeat (8) {
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h;
				a.speed_ = 7;
				a.pointed_at_player = false;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+90;
				a.pointed_at_player = false;
				a.speed_ = 7;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+180;
				a.pointed_at_player = false;
				a.speed_ = 7;
				a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
				a.direction_ = h+270;
				a.pointed_at_player = false;
				a.speed_ = 7;
				h += 9;
			}
		}
		if (gTiming.timer == 1983) {
			a = instance_create(BBPurple.x,BBPurple.y,objBulletLine);
			a.speed_ = 7;
			a.amount = 20;
			a.interval = 3;
		}
		if (gTiming.timer == 2060) {
			instance_destroy(BBPurple);
		}
	}
 	//blue;
	if (gTiming.timer >= 2050 && gTiming.timer <= 2600) {
		
		if (gTiming.timer == 2058) {
            OBBBlue1 = instance_create(96,96,objBig_Bullet);
            OBBBlue1.sprite_index = BBBlue2;
            OBBBlue2 = instance_create(704,96,objBig_Bullet);
            OBBBlue2.sprite_index = BBBlue2;
            OBBBlue3 = instance_create(96,512,objBig_Bullet);
            OBBBlue3.sprite_index = BBBlue2;
            OBBBlue4 = instance_create(704,512,objBig_Bullet);
            OBBBlue4.sprite_index = BBBlue2;
            doubler = true;
        }
		if (gTiming.timer == 2060) {
			funcSBShotgunCreationWithin(OBBBlue1,point_direction(OBBBlue1.x,OBBBlue1.y,objPlayer.x,objPlayer.y),7,SBBlue2,objBullet_Curve,15,10,"powerCurve");
			funcSBShotgunCreationWithin(OBBBlue2,point_direction(OBBBlue2.x,OBBBlue2.y,objPlayer.x,objPlayer.y),7,SBBlue2,objBullet_Curve,15,10,"powerCurve");
			funcSBShotgunCreationWithin(OBBBlue3,point_direction(OBBBlue3.x,OBBBlue3.y,objPlayer.x,objPlayer.y),7,SBBlue2,objBullet_Curve,15,10,"powerCurve");
			funcSBShotgunCreationWithin(OBBBlue4,point_direction(OBBBlue4.x,OBBBlue4.y,objPlayer.x,objPlayer.y),7,SBBlue2,objBullet_Curve,15,10,"powerCurve");
		}
		if (gTiming.timer == 2083) {
			OBBBlue1.speed = 10;
			OBBBlue1.direction = random(90)+270;
			//OBBBlue1.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			OBBBlue2.speed = 10;
			OBBBlue2.direction = random(90)+180;
			//OBBBlue2.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			OBBBlue3.speed = 10;
			OBBBlue3.direction = random(90);
			//OBBBlue3.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			OBBBlue4.speed = 10;
			OBBBlue4.direction = random(90)+90;
			//OBBBlue4.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
				
				
				
			//==============================================================================================
			/**/								//THE HOLY BRUH BRUH									/**/
			/**/								//    destroyed :(   									/**/
			/** 								if (bruhBruh == true)									/**/		
			/** 								{														/**/
			/** 									gTiming.timer += 15;										/**/
			/** 									bruhBruh = false;									/**/
			/** 								}														/**/
			//==============================================================================================
				
				
		}
		if (gTiming.timer == 2087) {
			OBBBlue1.speed = 0;
			OBBBlue2.speed = 0;
			OBBBlue3.speed = 0;
			OBBBlue4.speed = 0;
		}
		if (gTiming.timer == 2091) {
			funcSBShotgunCreationWithin(OBBBlue1,point_direction(OBBBlue1.x,OBBBlue1.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2104) {
			funcSBShotgunCreationWithin(OBBBlue2,point_direction(OBBBlue2.x,OBBBlue2.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2116) {
			funcSBShotgunCreationWithin(OBBBlue3,point_direction(OBBBlue3.x,OBBBlue3.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2129) {
			funcSBShotgunCreationWithin(OBBBlue4,point_direction(OBBBlue4.x,OBBBlue4.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"default");
		}
		if (gTiming.timer == 2145) {
			OBBBlue1.speed = 10;
			OBBBlue2.speed = 10;
			OBBBlue3.speed = 10;
			OBBBlue4.speed = 10;
		}
		if (gTiming.timer == 2162) {
			OBBBlue1.speed = 0;
			OBBBlue2.speed = 0;
			OBBBlue3.speed = 0;
			OBBBlue4.speed = 0;
		}
		if (gTiming.timer == 2170) {
			funcSBShotgunCreationWithin(OBBBlue1,point_direction(OBBBlue1.x,OBBBlue1.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2183) {
			funcSBShotgunCreationWithin(OBBBlue2,point_direction(OBBBlue2.x,OBBBlue2.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2195) {
			funcSBShotgunCreationWithin(OBBBlue3,point_direction(OBBBlue3.x,OBBBlue3.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2208) {
			funcSBShotgunCreationWithin(OBBBlue4,point_direction(OBBBlue4.x,OBBBlue4.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"default");
		}
		if (gTiming.timer == 2220) {
			OBBBlue1.speed = 10;
			OBBBlue2.speed = 10;
			OBBBlue3.speed = 10;
			OBBBlue4.speed = 10;
		}
		if (gTiming.timer == 2239) {
			OBBBlue1.speed = 0;
			OBBBlue2.speed = 0;
			OBBBlue3.speed = 0;
			OBBBlue4.speed = 0;
		}
		if (gTiming.timer == 2252) {
			funcSBShotgunCreationWithin(OBBBlue1,point_direction(OBBBlue1.x,OBBBlue1.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2264) {
			funcSBShotgunCreationWithin(OBBBlue2,point_direction(OBBBlue2.x,OBBBlue2.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2277) {
			funcSBShotgunCreationWithin(OBBBlue3,point_direction(OBBBlue3.x,OBBBlue3.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer == 2287) {
			funcSBShotgunCreationWithin(OBBBlue4,point_direction(OBBBlue4.x,OBBBlue4.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,13,10,"powerCurve");
		}
		if (gTiming.timer >= 2342 && gTiming.timer <= 2352) {
			OBBBlue1.speed = 10;
			OBBBlue2.speed = 10;
			OBBBlue3.speed = 10;
			OBBBlue4.speed = 10;
			OBBBlue1.image_alpha -= 0.08;
			OBBBlue2.image_alpha -= 0.08;
			OBBBlue3.image_alpha -= 0.08;
			OBBBlue4.image_alpha -= 0.08;
		}
		if (gTiming.timer >= 2346 && gTiming.timer < 2356) {
			OBBBlue1.image_alpha += 0.1;
		}
		if (gTiming.timer == 2356) {
			funcSBShotgunCreationWithin(OBBBlue1,point_direction(OBBBlue1.x,OBBBlue1.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,11,15,"default");
		}
		if (gTiming.timer >= 2371 && gTiming.timer < 2391) {
			OBBBlue1.image_alpha -= 0.05;
			if (gTiming.timer == 2390) {
				instance_destroy(OBBBlue1);
			}
		}
		if (gTiming.timer >= 2392 && gTiming.timer < 2402) {
			OBBBlue2.image_alpha += 0.1;
		}
		if (gTiming.timer == 2402) {
			funcSBShotgunCreationWithin(OBBBlue2,point_direction(OBBBlue2.x,OBBBlue2.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,11,15,"default");
		}
		if (gTiming.timer >= 2402 && gTiming.timer < 2422) {
			OBBBlue2.image_alpha -= 0.05;
			if (gTiming.timer == 2421) {
				instance_destroy(OBBBlue2);
			}
		}
		if (gTiming.timer >= 2427 && gTiming.timer < 2437) {
			OBBBlue3.image_alpha += 0.1;
		}
		if (gTiming.timer == 2437) {
			funcSBShotgunCreationWithin(OBBBlue3,point_direction(OBBBlue3.x,OBBBlue3.y,objPlayer.x,objPlayer.y),5,SBBlue2,objBullet_Curve,11,15,"default");
		}
		if (gTiming.timer >= 2437 && gTiming.timer < 2457) {
			OBBBlue3.image_alpha -= -0.05;
			if (gTiming.timer == 2456) {
				instance_destroy(OBBBlue3);
			}
		}
		if (gTiming.timer == 2521) {
			OBBBlue4.image_alpha = 1;
			OBBBlue4.speed = 0;
			OBBBlue4.x = 384;
			OBBBlue4.y = 288;
			megaArray = funcSBShotgunCreationWithin(OBBBlue4,point_direction(OBBBlue4.x,OBBBlue4.y,objPlayer.x,objPlayer.y),6.5,SBBlue2,objBullet_Curve,1000,.1,"whoa");
			tempArray = megaArray[0];
			array_size = megaArray[1];
		}
		if (gTiming.timer == 2556) {
			repeat(array_size/5) {
				array_size--;
				instance_destroy(tempArray[array_size]);
			}
		}
		if (gTiming.timer == 2562) {
			repeat(array_size/4) {
			array_size--;
			instance_destroy(tempArray[array_size]);
			}
		}
		if (gTiming.timer == 2568) {
			repeat(array_size/3) {
				array_size--;
				instance_destroy(tempArray[array_size]);
			}
		}
		if (gTiming.timer == 2575) {
			repeat(array_size/2) {
				array_size--;
				instance_destroy(tempArray[array_size]);
			}
		}
		if (gTiming.timer == 2581) {
			instance_destroy(OBBBlue4);
			repeat(array_size) {
				array_size--;
				instance_destroy(tempArray[array_size]);
			}
		}
	}
	//green
	if (gTiming.timer >= 2623  && gTiming.timer <= 3800) {
		if (gTiming.timer == 2623 ) {
			BBYellow = instance_create(384,224,objBig_Bullet);  
			BBYellow.sprite_index = BBYellow2;
		}
		if (gTiming.timer == 2638 ) {
			BBPurple = instance_create(439,320,objBig_Bullet);
			BBPurple.sprite_index = BBPurple2;
		}
		if (gTiming.timer == 2652 ) {
			BBBlue = instance_create(329,320,objBig_Bullet);
			BBBlue.sprite_index = BBBlue2;
		}
		if (gTiming.timer >= 2653 && gTiming.timer <= 2660) {
			BBPurple.image_xscale += 0.1;
			BBPurple.image_yscale += 0.1;
		
			BBYellow.image_xscale += 0.1;
			BBYellow.image_yscale += 0.1;
	
			BBBlue.image_xscale += 0.1;
			BBBlue.image_yscale += 0.1;
		
		}
		if (gTiming.timer >= 2660 && gTiming.timer <= 2670) {
			BBPurple.image_xscale += 0.2;
			BBPurple.image_yscale += 0.2;
			BBPurple.image_alpha -= 0.1
			BBYellow.image_xscale += 0.2;
			BBYellow.image_yscale += 0.2;
			BBYellow.image_alpha -= 0.1
			BBBlue.image_xscale += 0.2;
			BBBlue.image_yscale += 0.2;
			BBBlue.image_alpha -= 0.1
		}
		if (gTiming.timer == 2671){
			instance_destroy(BBPurple);
			instance_destroy(BBYellow);
			instance_destroy(BBBlue);
		}
		if (gTiming.timer > 2658 && gTiming.timer < 2670) {
			repeat(4) {
				a = funcCreationWithin(BBPurple,random(360),random(1)+1,SBPurple2,objSmallestBullet,20);
				a.image_alpha = BBPurple.image_alpha;
				a.sprite_index = SBPurple2;
				a.image_xscale = 0.2;
				a.image_yscale = 0.2;
				a = funcCreationWithin(BBYellow,random(360),random(1)+1,SBPurple2,objSmallestBullet,20);
				a.image_alpha = BBYellow.image_alpha;
				a.sprite_index = SBYellow2;
				a.image_xscale = 0.2;
				a.image_yscale = 0.2;
				a = funcCreationWithin(BBBlue,random(360),random(1)+1,SBPurple2,objSmallestBullet,20);
				a.image_alpha = BBBlue.image_alpha;
				a.sprite_index = SBBlue2;
				a.image_xscale = 0.2;
				a.image_yscale = 0.2;
			}
		}
		if (gTiming.timer == 2670) {
	        BBGreen = instance_create(394,298,objBig_Bullet);
	        BBGreen.sprite_index = BBGreen2;
	        BBGreen.image_xscale = 0.2;
	        BBGreen.image_yscale = 0.2;
			with(BBGreen) path_start(pthGreen_BIG_Bullet_Build_Up,1.6,path_action_stop,true);
		}
		if (gTiming.timer > 2670 && gTiming.timer < 2985) {
			a = instance_create(BBGreen.x,BBGreen.y,BBGreen_Trail);
			a.image_xscale = BBGreen.image_xscale;
			a.image_yscale = BBGreen.image_yscale;
			a.sprite_index = BBGreenTrail;
			a.modify = 0.2;
		}
		if (gTiming.timer >= 2985 && gTiming.timer <= 2992) {
			BBGreen.image_xscale += 0.1;
			BBGreen.image_yscale += 0.1;
		}
		if (gTiming.timer == 2992) {
			BBGreen.speed = 7;
			BBGreen.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			tempArray = [];
		}
		if (gTiming.timer > 2992 && gTiming.timer < 3799) {
			a = instance_create(BBGreen.x,BBGreen.y,BBGreen_Trail);
			a.sprite_index = BBGreenTrail;
			a.image_xscale = BBGreen.image_xscale;
			a.image_yscale = BBGreen.image_yscale;
			
		}
		if (gTiming.timer == 3300 || gTiming.timer == 3319 || gTiming.timer == 3342 ||
			gTiming.timer == 3356 || gTiming.timer == 3381 || gTiming.timer == 3571 ||
			gTiming.timer == 3394 || gTiming.timer == 3415 || gTiming.timer == 3437 ||
			gTiming.timer == 3454 || gTiming.timer == 3475 || gTiming.timer == 3494 ||
			gTiming.timer == 3512 || gTiming.timer == 3531 || gTiming.timer == 3550 ) {
			tempArray[array_length(tempArray)] = funcCreationWithin(BBGreen,random(360),4,BBGreen2,objSmallBBGreen,10);
		}
		
	}	
	//finale
	if (gTiming.timer > 3800 ){	
		if (gTiming.timer == 3840) {
		//	BBGreen = funcCreation(96,96,0,0,BBGreen2,objBig_Bullet,10);
			BBGreen.speed = 0;
		}
		if (gTiming.timer == 3844) {
			BBYellow = funcCreation(96,96,0,0,BBYellow2,objBig_Bullet,10);
			with(all) {
				if (object_get_name(object_index) == "objGreenWall" || object_get_name(object_index) == "objCornerGreen" || object_get_name(object_index) == "objCornerGray" || object_get_name(object_index) == "objGreyWall") {
					image_alpha -= 0.25;
				}
			}
		}
		if (gTiming.timer == 3862) {
			BBPurple = funcCreation(704,96,0,0,BBPurple2,objBig_Bullet,10);
			with(all) {
				if (object_get_name(object_index) == "objGreenWall" || object_get_name(object_index) == "objCornerGreen" || object_get_name(object_index) == "objCornerGray" || object_get_name(object_index) == "objGreyWall") {
					image_alpha -= 0.25;
				}
			}
		}
		if (gTiming.timer == 3879) {
			BBBlue = funcCreation(704,514,0,0,BBBlue2,objBig_Bullet,10);
			with(all) {
				if (object_get_name(object_index) == "objGreenWall" || object_get_name(object_index) == "objCornerGreen" || object_get_name(object_index) == "objCornerGray" || object_get_name(object_index) == "objGreyWall") {
					image_alpha -= 0.25;
				}
			}
		}
		if (gTiming.timer >= 3890 and gTiming.timer <= 3915) {
			if (gTiming.timer == 3890) {
				layer_destroy("blocks");
				with(all) {
					if (object_get_name(object_index) == "objGreenWall" || object_get_name(object_index) == "objCornerGreen" || object_get_name(object_index) == "objBlock" || object_get_name(object_index) == "objCornerGray" || object_get_name(object_index) == "objGreyWall") {
						speed = 15;
						direction = 90;
						var plat = instance_create_layer(x,y,"platforms",objMovingPlatform);
						plat.speed = 15;
						plat.direction = 90;
						plat.visible = false;
					}
				}
			}
			with(all) {
				if (object_get_name(object_index) == "objGreenWall" || object_get_name(object_index) == "objCornerGreen" || object_get_name(object_index) == "objMovingPlatform" || object_get_name(object_index) == "objCornerGray" || object_get_name(object_index) == "objGreyWall") {
					direction = 90;
					speed -= 0.8;
				}
			}
		}
		
		if (gTiming.timer == 3912) {
			BBGreen.speed = 5;
			BBGreen.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBGreen.image_xscale -= shrink; 
			BBGreen.image_yscale -= shrink; 
			BBYellow.speed = 3;
			BBYellow.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBYellow.image_xscale -= shrink; 
			BBYellow.image_yscale -= shrink; 
			BBPurple.speed = 3;
			BBPurple.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBPurple.image_xscale -= shrink; 
			BBPurple.image_yscale -= shrink; 
			BBBlue.speed = 3;
			BBBlue.direction = choose(random(50)+20,random(50)+20+90,random(50)+20+180,random(50)+20+270);
			BBBlue.image_xscale -= shrink; 
			BBBlue.image_yscale -= shrink; 
		
			objPlayer.image_xscale -= shrink
			objPlayer.image_yscale -= shrink
		}
		if (gTiming.timer > 3912) {
			
			if (gTiming.timer < 4540) { //first part attack yellow
				if (gTiming.timer % 100 == 0) {
				i = random(20);
					repeat(8){
						a = funcCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,3,SBYellow2,objBullet_2,20);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
						i+=45;
					}
				}
			}
			if (gTiming.timer < 4540) { //first part attack purple
				if (gTiming.timer % 90 == 0 || gTiming.timer % 90 == 3 || gTiming.timer % 90 == 6) {
						a = instance_create_depth(BBPurple.x,BBPurple.y,20,objBullet_2);
						a.sprite_index = SBPurple2;
						a.speed = 5;
						a.direction = point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
				}
			}
			if (gTiming.timer < 4540) { //first part attack blue
				if (gTiming.timer % 150 == 0) {
						amogus = funcSBShotgunCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y),4,SBBlue2,objBullet_Curve,9,10,"powerCurve");
						i = 0;
						repeat(array_length(amogus[0])) {
							amogus[0][i].image_xscale -= shrink;
							amogus[0][i].image_yscale -= shrink;
							i++;
						}
				}
			}
				
				if (gTiming.timer > 3912 && gTiming.timer < 6394) {
					a = instance_create_depth(BBGreen.x,BBGreen.y,20,BBGreen_Trail);
					a.image_xscale -= shrink;
					a.image_yscale -= shrink;
				}
			if (gTiming.timer < 6344) {
			objPlayer.image_xscale = 1 - shrink;
			objPlayer.image_yscale = 1 - shrink;
			
			
			a = funcCreation(random(20)-10,random(20)-10,2-random(3),random(7)+2,choose(SBBlue2,SBGreen2,SBPurple2,SBYellow2),objBullet_2,20);
			a.image_xscale -= shrink;
			a.image_yscale -= shrink;
			a = funcCreation(random(20)-10+800,random(20)-10,272-random(3),random(7)+2,choose(SBBlue2,SBGreen2,SBPurple2,SBYellow2),objBullet_2,20);
			a.image_xscale -= shrink;
			a.image_yscale -= shrink;
			a = funcCreation(random(20)-10,random(20)-10+608,92-random(3),random(7)+2,choose(SBBlue2,SBGreen2,SBPurple2,SBYellow2),objBullet_2,20);
			a.image_xscale -= shrink;
			a.image_yscale -= shrink;
			a = funcCreation(random(20)-10+800,random(20)-10+608,182-random(3),random(7)+2,choose(SBBlue2,SBGreen2,SBPurple2,SBYellow2),objBullet_2,20);
			a.image_xscale -= shrink;
			a.image_yscale -= shrink;
			}
			if (gTiming.timer == 3923) {
				a = instance_create(900, 304 ,objEndingWallSide);
				a.speed = 4;
				a.direction = 270;
				a = instance_create(-100, 304 ,objEndingWall);
				a.speed = 4;
				a.direction = 90;
			}	
			if (gTiming.timer > 4540 && gTiming.timer < 6349 ) {
				if (gTiming.timer % 250 == 50) {
					funcCreationWithin(BBGreen,random(360),4,BBGreen2,objSmallBBGreenEnd,10);
				}
				if (gTiming.timer == 5792) {BBGreen.speed = 7}
			}
			if (gTiming.timer == 4540) {
				
				shrink = 0.2;
				BBGreen.image_xscale -= 0.1; 
				BBGreen.image_yscale -= 0.1; 
				BBYellow.image_xscale -= 0.1; 
				BBYellow.image_yscale -= 0.1; 
				BBPurple.image_xscale -= 0.1; 
				BBPurple.image_yscale -= 0.1; 
				BBBlue.image_xscale -= 0.1; 
				BBBlue.image_yscale -= 0.1; 
			}
			if (gTiming.timer > 4540 && gTiming.timer < 5160 ) {
				if (gTiming.timer % 90 == 0) {
				i = random(20);
					repeat(10){
						a = funcCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,3,SBYellow2,objBullet_2,20);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
						i+=36;
					}
				}
				if (gTiming.timer % 90 == 0 || gTiming.timer % 90 == 3 || gTiming.timer % 90 == 6 || gTiming.timer % 90 == 9) {
						a = instance_create_depth(BBPurple.x,BBPurple.y,20,objBullet_2);
						a.sprite_index = SBPurple2;
						a.speed = 5;
						a.direction = point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
				}
				if (gTiming.timer % 150 == 0) {
					amogus = funcSBShotgunCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y),4,SBBlue2,objBullet_Curve,5,15,"linearCurve");
					i = 0;
					repeat(array_length(amogus[0])) {
						amogus[0][i].image_xscale -= shrink;
						amogus[0][i].image_yscale -= shrink;
						i++;
					}
				}
			}
			if (gTiming.timer == 5160) {
				
				shrink = 0.3;
				BBGreen.image_xscale -= 0.1; 
				BBGreen.image_yscale -= 0.1; 
				BBYellow.image_xscale -= 0.1; 
				BBYellow.image_yscale -= 0.1; 
				BBPurple.image_xscale -= 0.1; 
				BBPurple.image_yscale -= 0.1; 
				BBBlue.image_xscale -= 0.1; 
				BBBlue.image_yscale -= 0.1; 
			}
			if (gTiming.timer > 5160 && gTiming.timer < 5792 ) {
				if (gTiming.timer % 100 == 0) {
				i = random(20);
					repeat(12){
						a = funcCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,3,SBYellow2,objBullet_2,20);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
						i+=36;
					}
				}
				if (gTiming.timer % 90 == 0 || gTiming.timer % 90 == 3 || gTiming.timer % 90 == 6 || gTiming.timer % 90 == 9|| gTiming.timer % 90 == 12) {
						a = instance_create_depth(BBPurple.x,BBPurple.y,20,objBullet_2);
						a.sprite_index = SBPurple2;
						a.speed = 5;
						a.direction = point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
				}
				if (gTiming.timer % 150 == 0) {
					amogus = funcSBShotgunCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y),4,SBBlue2,objBullet_Curve,5,20,"default");
					i = 0;
					repeat(array_length(amogus[0])) {
						amogus[0][i].image_xscale -= shrink;
						amogus[0][i].image_yscale -= shrink;
						i++;
					}
				}
			}
			if (gTiming.timer == 5792) {
				
				shrink = 0.4;
				BBGreen.image_xscale -= 0.1; 
				BBGreen.image_yscale -= 0.1; 
				BBYellow.image_xscale -= 0.1; 
				BBYellow.image_yscale -= 0.1; 
				BBPurple.image_xscale -= 0.1; 
				BBPurple.image_yscale -= 0.1; 
				BBBlue.image_xscale -= 0.1; 
				BBBlue.image_yscale -= 0.1; 
			}
			if (gTiming.timer > 5792 && gTiming.timer < 6231 ) {
				if (gTiming.timer % 100 == 0) {
				i = random(20);
					repeat(16){
						a = funcCreationWithin(BBYellow,point_direction(BBYellow.x,BBYellow.y,objPlayer.x,objPlayer.y)+i,3,SBYellow2,objBullet_2,20);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
						i+=22.5;
					}
				}
				if (gTiming.timer % 90 == 0 || gTiming.timer % 90 == 3 || gTiming.timer % 90 == 6 || gTiming.timer % 90 == 9|| gTiming.timer % 90 == 12) {
						a = instance_create_depth(BBPurple.x,BBPurple.y,20,objBullet_2);
						a.sprite_index = SBPurple2;
						a.speed = 6;
						a.direction = point_direction(BBPurple.x,BBPurple.y,objPlayer.x,objPlayer.y);
						a.image_xscale -= shrink;
						a.image_yscale -= shrink;
				}
				if (gTiming.timer % 150 == 0) {
					amogus = funcSBShotgunCreationWithin(BBBlue,point_direction(BBBlue.x,BBBlue.y,objPlayer.x,objPlayer.y),4,SBBlue2,objBullet_Curve,7,20,"default");
					i = 0;
					repeat(array_length(amogus[0])) {
						amogus[0][i].image_xscale -= shrink;
						amogus[0][i].image_yscale -= shrink;
						i++;
					}
				}
			}
			if (gTiming.timer > 6344 && gTiming.timer < 6394) {
				BBGreen.speed += 0.4;
				BBYellow.speed += 0.2;
				BBPurple.speed += 0.2;
				BBBlue.speed += 0.2;
				
			}
			if (gTiming.timer == 6394) {
				BBGreen.speed = 0;
				BBYellow.speed = 0;
				BBPurple.speed = 0;
				BBBlue.speed = 0;
			
			}
			if (gTiming.timer > 6394) {
				BBGreen.image_alpha -= 0.0032;
				BBYellow.image_alpha -= 0.0032;
				BBPurple.image_alpha -= 0.0032;
				BBBlue.image_alpha -= 0.0032;
			}
			if gTiming.timer == 6702 {
				instance_create(400,304,objWarpNext)
			
			}
		}
	}
}