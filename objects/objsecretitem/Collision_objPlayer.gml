global.secretItem[itemNum] = true;

//save the item if autosaving items is on
if (global.autosaveSecretItems)
{
    global.saveSecretItem[itemNum] = true;
    scrSaveGame(false);
}

audio_play_sound(sndItem,0,false);
instance_destroy();

