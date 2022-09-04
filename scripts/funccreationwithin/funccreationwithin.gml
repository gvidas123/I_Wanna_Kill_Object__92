// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function funcCreationWithin(BIG_object,direction,speed,sprite_index_,object,depth){
	var current_Object = instance_create_layer(BIG_object.x+1,BIG_object.y+1,"boss",object);
	current_Object.speed = speed;
	current_Object.direction = direction;
	current_Object.sprite_index = sprite_index_;
	current_Object.depth = depth;
	return current_Object;

}