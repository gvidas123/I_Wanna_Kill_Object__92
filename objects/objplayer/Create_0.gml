frozen = false; //sets if the player can move or not

jump = 8.5 * global.grav; //set how fast the player jumps
jump2 = 7 * global.grav; //sets how fast the player double jumps
gravity = 0.4 * global.grav; //player gravity

djump = 1; //allow the player to double jump as soon as he spawns
maxSpeed = 3;   //max horizontal speed
maxVspeed = 9;  //max vertical speed
image_speed = 0.2; //initial speed of animation
onPlatform = false; //sets if player is currently standing on a platform

xScale = 1; //sets the direction the player is facing (1 is facing right, -1 is facing left)

scrSetPlayerMask(); //set the player's hitbox

if (global.difficulty == 0 && global.gameStarted)   //create the player's bow
    instance_create(x,y,objBow);

if (global.autosave) //save the game if currently set to autosave
{
    scrSaveGame(true);
    global.autosave = false;
}

