/// @description fade current music out
global.musicFading = true;
global.currentGain = audio_sound_get_gain(global.currentMusic);     //get current gain
audio_sound_gain(global.currentMusic,0,1000);                       //fade out music over 1 second

alarm[0] = 50;  //pause music when it's done fading

