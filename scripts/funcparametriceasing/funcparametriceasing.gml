// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Input a value from 0-1
//Ouputs a curving value from 0-1
function funcParametricEasing(input) {
	input2 = input * input;
	return input2 / (2 * (input2 - input) + 1);
}