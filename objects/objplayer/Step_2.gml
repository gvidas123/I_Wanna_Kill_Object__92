if ((x < 0 || x > room_width || y < 0 || y > room_height) && global.edgeDeath)  //check if player has left the room
    scrKillPlayer();

//update player sprite
if (global.playerAnimationFix)
{
    //block/vine checks
    var notOnBlock = (place_free(x,y+(global.grav)));
    var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);
    var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
    
    if (!onVineR && !onVineL)   //not touching any vines
    {
        if (onPlatform || !notOnBlock)  //standing on something
        {
            //check if moving left/right
            var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
            var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));
            
            if ((L || R) && !frozen)
            {
                sprite_index = sprPlayerRunning;
                image_speed = 1/2;
            }
            else
            {
                sprite_index = sprPlayerIdle;
                image_speed = 1/5;
            }
        }
        else    //in the air
        { 
            if ((vspeed * global.grav) < 0)
            {
                sprite_index = sprPlayerJump;
                image_speed = 1/2;
            }
            else
            {
                sprite_index = sprPlayerFall;
                image_speed = 1/2;
            }
        }
    }
    else    //touching a vine
    {
        sprite_index = sprPlayerSliding;
        image_speed = 1/2;
    }
}


