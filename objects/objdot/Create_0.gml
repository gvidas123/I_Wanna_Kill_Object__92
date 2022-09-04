/// @description Insert description here
// You can write your code in this editor

//Enable for random movement and disable the if with move towards
//direction = random_range(0, 360);
//speed = random_range(0.05, 0.2);

roomXCenter = 400; //set to room middle
roomYCenter = 304; //set to room middle
zoomPower = 0.1; //how fast you zoom
scale = random_range(0.5, 1.5); //size variance
alphaMax = 0.2; //how bright it gets
image_alpha = 0; //minimum brightness
lifespan = 100; //how long it stays at max brightness
fadeTime = 90; //how long it goes in and out of max brightness

//dont need change
timeros = 0;
image_xscale = scale;
image_yscale = scale;
spawnX = x;
spawnY = y;
