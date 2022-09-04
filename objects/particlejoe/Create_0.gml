/// @description Insert description here
// You can write your code in this editor

/*
global.P_System = part_system_create_layer("Instance_Layer", false);
global.Particle1 = part_type_create();
part_type_shape(global.Particle1,pt_shape_cloud);
part_type_size(global.Particle1,1,1,0,2);
part_type_color1(global.Particle1,c_white);
part_type_alpha1(global.Particle1,1);
part_type_speed(global.Particle1,5,10,0,0);
part_type_direction(global.Particle1,0,359,0,20);
part_type_orientation(global.Particle1,0,0,0,0,true);
part_type_blend(global.Particle1,1);
part_type_life(global.Particle1,5,30);
lay_id = layer_get_id("Instance_Layer");
layer_set_visible(lay_id, true);*/
delayTime = 100;
xRandomize1 = 0;
xRandomize2 = 0;
yRandomize1 = 0;
yRandomize2 = 0;


//Backgrounds
{
	//Black
	{
		partZoomSystem = part_system_create();
		part_system_depth(partZoomSystem, 10000);
		partZoomParticle = part_type_create();
		part_type_sprite(partZoomParticle, dot, false, false, false);
		part_type_size(partZoomParticle,1,2,0,0);
		part_type_color1(partZoomParticle,c_white);
		part_type_alpha3(partZoomParticle,0,0.3,0);
		part_type_speed(partZoomParticle,0.5,2,0,0);
		part_type_direction(partZoomParticle,0,359,0,0);
		part_type_orientation(partZoomParticle,0,0,0,0,true);
		part_type_blend(partZoomParticle,1);
		part_type_life(partZoomParticle,500,500);
	}

	//Yellow
	{
		partYellowBGSystem = part_system_create();
		part_system_depth(partYellowBGSystem, 10000);
		partYellowBGParticle = part_type_create();
		//part_type_shape(partZoomParticle,pt_shape_cloud);
		part_type_sprite(partYellowBGParticle, dot, false, false, false);
		part_type_size(partYellowBGParticle,1,2,0,0);
		part_type_color1(partYellowBGParticle,c_yellow);
		part_type_alpha3(partYellowBGParticle,0,0.3,0);
		part_type_speed(partYellowBGParticle,1,1,0,0);
		part_type_direction(partYellowBGParticle,0,359,1,0);
		part_type_orientation(partYellowBGParticle,0,0,0,0,true);
		part_type_blend(partYellowBGParticle,1);
		part_type_life(partYellowBGParticle,500,500);
	}
	
	//Purple
	{
		partPurpleBGVDownSystem = part_system_create();
		part_system_depth(partPurpleBGVDownSystem, 10000);
		partPurpleBGVDownParticle = part_type_create();
		part_type_sprite(partPurpleBGVDownParticle, dot, false, false, false);
		part_type_size(partPurpleBGVDownParticle,2,2,0,0);
		part_type_color1(partPurpleBGVDownParticle,$812a81);
		part_type_alpha3(partPurpleBGVDownParticle,0,0.3,0);
		part_type_speed(partPurpleBGVDownParticle,2,2,0,0);
		part_type_direction(partPurpleBGVDownParticle,270,270,0,0);
		part_type_orientation(partPurpleBGVDownParticle,0,0,0,0,true);
		part_type_blend(partPurpleBGVDownParticle,1);
		part_type_life(partPurpleBGVDownParticle,500,500);

		partPurpleBGVUpSystem = part_system_create();
		part_system_depth(partPurpleBGVUpSystem, 10000);
		partPurpleBGVUpParticle = part_type_create();
		part_type_sprite(partPurpleBGVUpParticle, dot, false, false, false);
		part_type_size(partPurpleBGVUpParticle,2,2,0,0);
		part_type_color1(partPurpleBGVUpParticle,$812a81);
		part_type_alpha3(partPurpleBGVUpParticle,0,0.3,0);
		part_type_speed(partPurpleBGVUpParticle,2,2,0,0);
		part_type_direction(partPurpleBGVUpParticle,90,90,0,0);
		part_type_orientation(partPurpleBGVUpParticle,0,0,0,0,true);
		part_type_blend(partPurpleBGVUpParticle,1);
		part_type_life(partPurpleBGVUpParticle,500,500);

		partPurpleBGHLeftSystem = part_system_create();
		part_system_depth(partPurpleBGHLeftSystem, 10000);
		partPurpleBGHLeftParticle = part_type_create();
		part_type_sprite(partPurpleBGHLeftParticle, dot, false, false, false);
		part_type_size(partPurpleBGHLeftParticle,2,2,0,0);
		part_type_color1(partPurpleBGHLeftParticle,$812a81);
		part_type_alpha3(partPurpleBGHLeftParticle,0,0.3,0);
		part_type_speed(partPurpleBGHLeftParticle,2,2,0,0);
		part_type_direction(partPurpleBGHLeftParticle,180,180,0,0);
		part_type_orientation(partPurpleBGHLeftParticle,0,0,0,0,true);
		part_type_blend(partPurpleBGHLeftParticle,1);
		part_type_life(partPurpleBGHLeftParticle,500,500);

		partPurpleBGHRightSystem = part_system_create();
		part_system_depth(partPurpleBGHRightSystem, 10000);
		partPurpleBGHRightParticle = part_type_create();
		part_type_sprite(partPurpleBGHRightParticle, dot, false, false, false);
		part_type_size(partPurpleBGHRightParticle,2,2,0,0);
		part_type_color1(partPurpleBGHRightParticle,$812a81);
		part_type_alpha3(partPurpleBGHRightParticle,0,0.3,0);
		part_type_speed(partPurpleBGHRightParticle,2,2,0,0);
		part_type_direction(partPurpleBGHRightParticle,0,0,0,0);
		part_type_orientation(partPurpleBGHRightParticle,0,0,0,0,true);
		part_type_blend(partPurpleBGHRightParticle,1);
		part_type_life(partPurpleBGHRightParticle,500,500);
	}
		
	//Blue
	{
		partBlueBGSystem = part_system_create();
		part_system_depth(partBlueBGSystem, 10000);
		partBlueBGParticle = part_type_create();
		part_type_sprite(partBlueBGParticle, dot, false, false, false);
		part_type_size(partBlueBGParticle,2,2,0,0);
		part_type_color1(partBlueBGParticle,c_teal);
		part_type_alpha3(partBlueBGParticle,0,0.3,0);
		part_type_speed(partBlueBGParticle,2,2,0,0);
		part_type_direction(partBlueBGParticle,225,315,0,0);
		part_type_orientation(partBlueBGParticle,0,0,0,0,true);
		part_type_blend(partBlueBGParticle,1);
		part_type_life(partBlueBGParticle,500,500);
	}
		
	//Green
	{
		partGreenBGStartSystem = part_system_create();
		part_system_depth(partGreenBGStartSystem, 10000);
		partGreenBGStartParticle = part_type_create();
		part_type_sprite(partGreenBGStartParticle, dot, false, false, false);
		part_type_size(partGreenBGStartParticle,1,2,0,0);
		part_type_color1(partGreenBGStartParticle,c_green);
		part_type_alpha3(partGreenBGStartParticle,0,0.3,0);
		part_type_speed(partGreenBGStartParticle,0,0,0,0);
		part_type_direction(partGreenBGStartParticle,75,105,0,5);
		part_type_orientation(partGreenBGStartParticle,0,0,0,0,true);
		part_type_blend(partGreenBGStartParticle,1);
		part_type_life(partGreenBGStartParticle,600,600);
		
		partGreenBGBoomSystem = part_system_create();
		part_system_depth(partGreenBGBoomSystem, 10000);
		partGreenBGBoomParticle = part_type_create();
		part_type_sprite(partGreenBGBoomParticle, dot, false, false, false);
		part_type_size(partGreenBGBoomParticle,5,5,-0.05,0);
		part_type_color1(partGreenBGBoomParticle,c_green);
		part_type_alpha2(partGreenBGBoomParticle,0.3,0);
		part_type_speed(partGreenBGBoomParticle,1.8,1.8,-0.001,0);
		part_type_direction(partGreenBGBoomParticle,75,105,0,5);
		part_type_orientation(partGreenBGBoomParticle,0,0,0,0,true);
		part_type_blend(partGreenBGBoomParticle,1);
		part_type_life(partGreenBGBoomParticle,600,600);
		
		partGreenBGContinueSystem = part_system_create();
		part_system_depth(partGreenBGContinueSystem, 10000);
		partGreenBGContinueParticle = part_type_create();
		part_type_sprite(partGreenBGContinueParticle, dot, false, false, false);
		part_type_size(partGreenBGContinueParticle,1,2,0,0);
		part_type_color1(partGreenBGContinueParticle,c_green);
		part_type_alpha2(partGreenBGContinueParticle,0.3,0);
		part_type_speed(partGreenBGContinueParticle,1.8,1.8,-0.001,0);
		part_type_direction(partGreenBGContinueParticle,75,105,0,10);
		part_type_orientation(partGreenBGContinueParticle,0,0,0,0,true);
		part_type_blend(partGreenBGContinueParticle,1);
		part_type_life(partGreenBGContinueParticle,600,600);
	}
	
	//Finale
	{
		partGreenZoomSystem = part_system_create();
		part_system_depth(partGreenZoomSystem, 10000);
		partGreenZoomParticle = part_type_create();
		part_type_sprite(partGreenZoomParticle, dot, false, false, false);
		part_type_size(partGreenZoomParticle,1,2,0,0);
		part_type_color1(partGreenZoomParticle,c_green);
		part_type_alpha3(partGreenZoomParticle,0,0.3,0);
		part_type_speed(partGreenZoomParticle,2.5,10,0,0);
		part_type_direction(partGreenZoomParticle,0,359,0,0);
		part_type_orientation(partGreenZoomParticle,0,0,0,0,true);
		part_type_blend(partGreenZoomParticle,1);
		part_type_life(partGreenZoomParticle,100,100);
		
		partBlueZoomSystem = part_system_create();
		part_system_depth(partBlueZoomSystem, 10000);
		partBlueZoomParticle = part_type_create();
		part_type_sprite(partBlueZoomParticle, dot, false, false, false);
		part_type_size(partBlueZoomParticle,1,2,0,0);
		part_type_color1(partBlueZoomParticle,c_teal);
		part_type_alpha3(partBlueZoomParticle,0,0.3,0);
		part_type_speed(partBlueZoomParticle,2.5,10,0,0);
		part_type_direction(partBlueZoomParticle,0,359,0,0);
		part_type_orientation(partBlueZoomParticle,0,0,0,0,true);
		part_type_blend(partBlueZoomParticle,1);
		part_type_life(partBlueZoomParticle,100,100);
		
		partYellowZoomSystem = part_system_create();
		part_system_depth(partYellowZoomSystem, 10000);
		partYellowZoomParticle = part_type_create();
		part_type_sprite(partYellowZoomParticle, dot, false, false, false);
		part_type_size(partYellowZoomParticle,1,2,0,0);
		part_type_color1(partYellowZoomParticle,c_yellow);
		part_type_alpha3(partYellowZoomParticle,0,0.2,0);
		part_type_speed(partYellowZoomParticle,2.5,10,0,0);
		part_type_direction(partYellowZoomParticle,0,359,0,0);
		part_type_orientation(partYellowZoomParticle,0,0,0,0,true);
		part_type_blend(partYellowZoomParticle,1);
		part_type_life(partYellowZoomParticle,100,100);
		
		partPurpleZoomSystem = part_system_create();
		part_system_depth(partPurpleZoomSystem, 10000);
		partPurpleZoomParticle = part_type_create();
		part_type_sprite(partPurpleZoomParticle, dot, false, false, false);
		part_type_size(partPurpleZoomParticle,1,2,0,0);
		part_type_color1(partPurpleZoomParticle,$812a81);
		part_type_alpha3(partPurpleZoomParticle,0,0.3,0);
		part_type_speed(partPurpleZoomParticle,2.5,10,0,0);
		part_type_direction(partPurpleZoomParticle,0,359,0,0);
		part_type_orientation(partPurpleZoomParticle,0,0,0,0,true);
		part_type_blend(partPurpleZoomParticle,1);
		part_type_life(partPurpleZoomParticle,100,100);
		
		partBlackZoomSystem = part_system_create();
		part_system_depth(partBlackZoomSystem, 10000);
		partBlackZoomParticle = part_type_create();
		part_type_sprite(partBlackZoomParticle, dot, false, false, false);
		part_type_size(partBlackZoomParticle,1,2,0,0);
		part_type_color1(partBlackZoomParticle,c_grey);
		part_type_alpha3(partBlackZoomParticle,0,0.3,0);
		part_type_speed(partBlackZoomParticle,1.5,6,0,0);
		part_type_direction(partBlackZoomParticle,0,359,0,0);
		part_type_orientation(partBlackZoomParticle,0,0,0,0,true);
		part_type_blend(partBlackZoomParticle,1);
		part_type_life(partBlackZoomParticle,100,100);
	}

}

//Appear/Disappear
{
	partSBExplosionSystem = part_system_create();
	part_system_depth(partSBExplosionSystem, 10000);
	partSBExplosionParticle = part_type_create();
	part_type_sprite(partSBExplosionParticle, SBBlack2, false, false, false);
	part_type_size(partSBExplosionParticle,1,1,0.3,0);
	part_type_color1(partSBExplosionParticle,c_white);
	part_type_alpha3(partSBExplosionParticle,0.5,0.1,0);
	part_type_speed(partSBExplosionParticle,0,0,0,0);
	part_type_direction(partSBExplosionParticle,180,180,0,0);
	part_type_orientation(partSBExplosionParticle,0,0,0,0,true);
	part_type_blend(partSBExplosionParticle,1);
	part_type_life(partSBExplosionParticle,20,20);
	
	partBBBlackAppearSystem = part_system_create();
	part_system_depth(partBBBlackAppearSystem, 10000);
	partBBBlackAppearParticle = part_type_create();
	part_type_sprite(partBBBlackAppearParticle, SBBlack2, false, false, false);
	part_type_size(partBBBlackAppearParticle,1,2,-0.01,0);
	part_type_color1(partBBBlackAppearParticle,c_white);
	part_type_alpha2(partBBBlackAppearParticle,0.2,0);
	part_type_speed(partBBBlackAppearParticle,5,6,-0.1,0);
	part_type_direction(partBBBlackAppearParticle,0,360,0,0);
	part_type_orientation(partBBBlackAppearParticle,0,0,0,0,true);
	part_type_blend(partBBBlackAppearParticle,false);
	part_type_life(partBBBlackAppearParticle,20,20);
	part_type_gravity(partBBBlackAppearParticle,0.2,270)
}

//Trails
{
	partBBWobblyTrailSystem = part_system_create();
	part_system_depth(partBBWobblyTrailSystem, 10000);
	partBBWobblyTrailParticle = part_type_create();
	part_type_sprite(partBBWobblyTrailParticle, SBBlack2, false, false, false);
	part_type_size(partBBWobblyTrailParticle,3,3,-0.05,0.5);
	part_type_color1(partBBWobblyTrailParticle,c_dkgrey);
	part_type_alpha2(partBBWobblyTrailParticle,0.5,0);
	part_type_speed(partBBWobblyTrailParticle,0,0,0,0);
	part_type_direction(partBBWobblyTrailParticle,120,120,0,0);
	part_type_orientation(partBBWobblyTrailParticle,0,0,0,0,true);
	part_type_blend(partBBWobblyTrailParticle,false);
	part_type_life(partBBWobblyTrailParticle,200,200);

	partBBWobblierTrailSystem = part_system_create();
	part_system_depth(partBBWobblierTrailSystem, 10000);
	partBBWobblierTrailParticle = part_type_create();
	part_type_sprite(partBBWobblierTrailParticle, SBBlack2, false, false, false);
	part_type_size(partBBWobblierTrailParticle,3.5,3.5,-0.05,1);
	part_type_color1(partBBWobblierTrailParticle,c_dkgrey);
	part_type_alpha2(partBBWobblierTrailParticle,0.5,0);
	part_type_speed(partBBWobblierTrailParticle,0,0,0,0);
	part_type_direction(partBBWobblierTrailParticle,120,120,0,0);
	part_type_orientation(partBBWobblierTrailParticle,0,0,0,0,true);
	part_type_blend(partBBWobblierTrailParticle,false);
	part_type_life(partBBWobblierTrailParticle,200,200);
	
	partSmallestDashTrailSystem = part_system_create();
	part_system_depth(partSmallestDashTrailSystem, 10000);
	partSmallestDashTrailParticle = part_type_create();
	part_type_sprite(partSmallestDashTrailParticle, BBGreenTrail, false, false, false);
	part_type_size(partSmallestDashTrailParticle,0.12,0.12,-0.01,0);
	part_type_color1(partSmallestDashTrailParticle,c_green);
	part_type_alpha2(partSmallestDashTrailParticle,1,0);
	part_type_speed(partSmallestDashTrailParticle,0,0,0,0);
	part_type_direction(partSmallestDashTrailParticle,120,120,0,0);
	part_type_orientation(partSmallestDashTrailParticle,0,0,0,0,true);
	part_type_blend(partSmallestDashTrailParticle,false);
	part_type_life(partSmallestDashTrailParticle,20,20);
}







/*
partZoomParticleEmitter2 = part_emitter_create(partZoomSystem);
part_emitter_region(partZoomSystem, partZoomParticleEmitter2, mouse_x-10, mouse_x+10, mouse_y-10, mouse_y+10, ps_shape_ellipse, ps_distr_gaussian);
*/






