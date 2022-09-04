// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


// 
function funcCreateCircle(x,y,amount_of_bullets,speed,object,sprite){
	randomise();
	var i = random(360);
	repeat (amount_of_bullets) {
		var a = instance_create_layer(x,y,"boss",object);
		a.direction = i + (360/amount_of_bullets)
		i += (360/amount_of_bullets)
		a.speed = speed;
		with(a) {
		sprite_index = sprite;
		}
	}
	
	

}