event_inherited();

if (speedDown)
{
    if (speed > 0)
    {
        speed -= 0.25;
    }
    else
    {
        speedDown = 0;
        speed = 0;
    }
}

if (moveFromPlayer)
{
    if (instance_exists(objPlayer))
        direction = point_direction(objPlayer.x,objPlayer.y,x,y);
    
    speed += 0.2;
}
else
{
    move_bounce_solid(false);
}

