//this boss uses its own internal timer to coordinate attacks, you could also use timelines to set attack timing instead of this method
timer = 0;
curve = false;

scrStopMusic();
scrPlayMusic(musMiku,false);    //song is "Hatsune Miku - Tho (ニナ)"

global.noPause = true;  //make it so that the player can't pause during the boss

