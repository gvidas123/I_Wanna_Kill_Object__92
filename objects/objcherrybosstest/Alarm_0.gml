if (instance_exists(objPlayer))
{
    var a = instance_create(x,y,objCherry);
    a.speed = 5;
    a.direction = point_direction(x,y,objPlayer.x,objPlayer.y);
    
    alarm[0] = 45;
}

