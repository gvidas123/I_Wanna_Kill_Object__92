// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function funcSBCreationWithin(BIG_object,direction,speed,sprite_index_,object){
	var current_Object = instance_create_layer(BIG_object.x,BIG_object.y,"boss",object);
	current_Object.speed = speed;
	current_Object.direction = direction;
	with(current_Object) {
		sprite_index = sprite_index_
	}
	return current_Object;
}