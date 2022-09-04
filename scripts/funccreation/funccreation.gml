// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function funcCreation(x,y,direction,speed,sprite_index_,object,depth){
	var current_object = instance_create_depth(x,y,depth,object);
	current_object.speed = speed;
	current_object.direction = direction;
	with(current_object) {
		sprite_index = sprite_index_
	}
	return current_object;
}