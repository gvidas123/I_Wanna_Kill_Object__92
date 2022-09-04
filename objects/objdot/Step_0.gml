/// @description Insert description here
// You can write your code in this editor

//Dsiable this and enable the first 2 lines for random movement

if point_distance(x, y, roomXCenter, roomYCenter) > 0.1
{
    move_towards_point(roomXCenter, roomYCenter, -sqrt(abs(spawnX^2-roomXCenter^2 + spawnY^2-roomYCenter^2))*zoomPower);
}

if (timeros <= fadeTime)
{
	image_alpha += alphaMax/fadeTime;
}
else if (timeros >= fadeTime + lifespan)
{
	image_alpha -= alphaMax/fadeTime;
	if (timeros == lifespan + fadeTime*2)
	{
		instance_destroy();
	}
}
if(timeros == 100) {
instance_destroy();
}
timeros++;
