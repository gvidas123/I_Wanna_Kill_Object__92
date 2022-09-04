direction -= 0.4;
if (instance_exists(objEndingWallSide) && gTiming.timer < 6344){
    //if (gTiming.timer % 2 == 0) { 
        a = funcCreation(choose(x+random(10),x-random(10)),choose(y+random(10),y-random(10)),point_direction(x,y,objEndingWallSide.x,objEndingWallSide.y),random(3)+5,choose(SBBlue2,SBGreen2,SBPurple2,SBYellow2),objBulletEnd,20);
        a.image_xscale -= Object92.shrink 
        a.image_yscale -= Object92.shrink 
    //}

}