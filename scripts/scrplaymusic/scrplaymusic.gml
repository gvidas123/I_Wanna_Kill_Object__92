/// @description scrPlayMusic(soundid,loops)
/// @param soundid
/// @param loops
///plays a song if it's not already playing
///argument0 - song to play (-1 plays nothing and stops anything currently playing)
///argument1 - whether or not to loop the song
function scrPlayMusic(argument0, argument1) {

	var songID = argument0;
	var loopSong = argument1;

	if (!global.muteMusic)  //check if music is supposed to be muted
	{
	    if (global.currentMusicID != songID)  //checks if the song to play is already playing
	    {
	        global.currentMusicID = songID;
        
	        audio_stop_sound(global.currentMusic);
        
	        if (songID != -1)
	            global.currentMusic = audio_play_sound(global.currentMusicID,1,loopSong);
	    }
	}



}
