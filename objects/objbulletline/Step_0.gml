/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)) {
	if (timer % interval == 0) {
		if (pointed_at_player == true) {
			direction_ = point_direction(x,y,objPlayer.x,objPlayer.y);
		}
		c = instance_create_depth(x,y,20,object);
		c.speed = speed_;
		c.direction = direction_;
		c.sprite_index = sprite;
	}
	if (timer >= interval*amount) {
		instance_destroy();
	}
	timer++;
}

