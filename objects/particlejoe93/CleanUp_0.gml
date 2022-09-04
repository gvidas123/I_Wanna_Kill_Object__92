//Backgrounds
{
	//Black
	{
		part_particles_clear(partZoomSystem);
		part_type_destroy(partZoomParticle);
		part_system_destroy(partZoomSystem);
	}

	//Yellow
	{
		part_particles_clear(partYellowBGSystem);
		part_type_destroy(partYellowBGParticle);
		part_system_destroy(partYellowBGSystem);
	}
	
	//Purple
	{
		part_particles_clear(partPurpleBGVDownSystem);
		part_type_destroy(partPurpleBGVDownParticle);
		part_system_destroy(partPurpleBGVDownSystem);

		part_particles_clear(partPurpleBGVUpSystem);
		part_type_destroy(partPurpleBGVUpParticle);
		part_system_destroy(partPurpleBGVUpSystem);

		part_particles_clear(partPurpleBGHLeftSystem);
		part_type_destroy(partPurpleBGHLeftParticle);
		part_system_destroy(partPurpleBGHLeftSystem);

		part_particles_clear(partPurpleBGHRightSystem);
		part_type_destroy(partPurpleBGHRightParticle);
		part_system_destroy(partPurpleBGHRightSystem);
	}
		
	//Blue
	{
		part_particles_clear(partBlueBGSystem);
		part_type_destroy(partBlueBGParticle);
		part_system_destroy(partBlueBGSystem);
	}
		
	//Green
	{
		part_particles_clear(partGreenBGStartSystem);
		part_type_destroy(partGreenBGStartParticle);
		part_system_destroy(partGreenBGStartSystem);
		
		part_particles_clear(partGreenBGBoomSystem);
		part_type_destroy(partGreenBGBoomParticle);
		part_system_destroy(partGreenBGBoomSystem);
		
		part_particles_clear(partGreenBGContinueSystem);
		part_type_destroy(partGreenBGContinueParticle);
		part_system_destroy(partGreenBGContinueSystem);
	}
	
	//Finale
	{
		part_particles_clear(partGreenZoomSystem);
		part_type_destroy(partGreenZoomParticle);
		part_system_destroy(partGreenZoomSystem);
		
		part_particles_clear(partBlueZoomSystem);
		part_type_destroy(partBlueZoomParticle);
		part_system_destroy(partBlueZoomSystem);
		
		part_particles_clear(partYellowZoomSystem);
		part_type_destroy(partYellowZoomParticle);
		part_system_destroy(partYellowZoomSystem);
		
		part_particles_clear(partPurpleZoomSystem);
		part_type_destroy(partPurpleZoomParticle);
		part_system_destroy(partPurpleZoomSystem);
		
		part_particles_clear(partBlackZoomSystem);
		part_type_destroy(partBlackZoomParticle);
		part_system_destroy(partBlackZoomSystem);
	}

}

//Appear/Disappear
{
	part_particles_clear(partSBExplosionSystem);
	part_type_destroy(partSBExplosionParticle);
	part_system_destroy(partSBExplosionSystem);
	
	part_particles_clear(partBBBlackAppearSystem);
	part_type_destroy(partBBBlackAppearParticle);
	part_system_destroy(partBBBlackAppearSystem);
}

//Trails
{
	part_particles_clear(partBBWobblyTrailSystem);
	part_type_destroy(partBBWobblyTrailParticle);
	part_system_destroy(partBBWobblyTrailSystem);

	part_particles_clear(partBBWobblierTrailSystem);
	part_type_destroy(partBBWobblierTrailParticle);
	part_system_destroy(partBBWobblierTrailSystem);
	
	part_particles_clear(partSmallestDashTrailSystem);
	part_type_destroy(partSmallestDashTrailParticle);
	part_system_destroy(partSmallestDashTrailSystem);
}


