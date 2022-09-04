/// @description sets the player's mask depending on gravity flip mode
function scrSetPlayerMask() {

	if (global.grav == 1)
	    mask_index = sprPlayerMask;
	else
	    mask_index = sprPlayerMaskFlip;



}
