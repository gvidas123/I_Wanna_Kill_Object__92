audio_play_sound(sndBossHit,0,false);

with (other)
    instance_destroy();

currentHP -= 1;

if (currentHP <= 0)
{
    with (objBlockInvis)
        instance_destroy();
    
    global.noPause = false;
    
    instance_destroy();
}

