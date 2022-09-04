// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function funcCreateEmptyCircle(x,y,radius,amount,object,sprite){
		var Big_array_ = [];
        var rad = 0;
		var array_ = [];
		var array_size_ = 0;
        repeat(amount/2)
        {
          var xObj = cos(rad)*radius;
          var yObj = sin(rad)*radius;
           array_[array_size_] =  instance_create(x + xObj, y + yObj, object)
		   with (array_[array_size_]) {sprite_index = sprite}
           array_size_++
			array_[array_size_] =   instance_create(x - xObj, y - yObj, object)
		   with (array_[array_size_]) {sprite_index = sprite}
		   array_size_++
            rad += 2*pi/amount;
        }
		for(i = 0; i < array_size_;i++) {
		Big_array_[0][i] = array_[i];
		Big_array_[1][0] = array_size_;
		}
		return Big_array_ ;
}