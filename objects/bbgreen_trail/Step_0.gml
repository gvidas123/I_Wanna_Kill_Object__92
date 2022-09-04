/// @description Insert description here
// You can write your code in this editor


image_xscale = image_xscale - (0.025 * (1-(1-(1-(modify*3)))));
image_yscale = image_yscale - (0.025 * (1-(1-(1-(modify*3)))));

if (image_xscale < (0.1*modify)) {instance_destroy()}
