
if (invincible == false) {
	audio_play_sound(sndBossHit,0,false);
	currentHP -= 1;
}

with (other)
    instance_destroy();

if (currentHP <= 0)
{
	instance_create(x, y, Object93BossFadeOut);
	
    with (objBlockInvis)
        instance_destroy();
    
    global.noPause = false;
    
    instance_destroy();
	
	
}

