//get the bullet's direction based off the direction the player is facing

var bulletDir;
if (instance_exists(objPlayer))
    bulletDir = objPlayer.xScale;
else
    bulletDir = 1;

//set the bullet's speed
hspeed = bulletDir * 16;

alarm[0] = 40;

