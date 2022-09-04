//animate player sprite
playerIndex = (playerIndex + 1/5) mod 4;

if (scrButtonCheckPressed(global.menuUpButton))
{
    audio_play_sound(global.menuSound,0,false);
    select -= 1;
    if(select < 0)
        select = optionsNum-1;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    audio_play_sound(global.menuSound,0,false);
    select += 1;
    if(select > optionsNum-1)
        select = 0;
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    //save changes and go back
    scrSaveConfig();
    global.menuSelectPrev[1] = 0;
    room_goto(rMenu);
    exit;
}
else if (scrButtonCheckPressed(global.menuAcceptButton))
{
    if (select == 0)    //toggle mute music
    {
        scrToggleMusic();
    }
    else if (select == 2)   //toggle fullscreen
    {
        global.fullscreenMode = !global.fullscreenMode;
        
        window_set_fullscreen(global.fullscreenMode);
    }
    else if (select == 3)   //toggle smoothing mode
    {
        global.smoothingMode = !global.smoothingMode;
    }
    else if (select == 4)   //toggle vsync mode
    {
        global.vsyncMode = !global.vsyncMode;
        
        scrSetVsync();
    }
    else if (select == 5)   //go to the keyboard controls menu
    {
        scrSaveConfig();    //save changes
        global.menuSelectPrev[1] = select;
        instance_create(x,y,objKeyboardControlsMenu);
        instance_destroy();
        exit;
    }
    else if (select == 6)   //go to the controller options menu
    {
        scrSaveConfig();    //save changes
        global.menuSelectPrev[1] = select;
        instance_create(x,y,objControllerMenu);
        instance_destroy();
        exit;
    }
}


if (select == 1)
{
    if (scrButtonCheck(global.menuRightButton))  //raise volume
    {
        if (global.volumeLevel < 100)
            global.volumeLevel += 1;
        
        audio_master_gain(global.volumeLevel/100);  //set master gain
    }
    else if (scrButtonCheck(global.menuLeftButton))  //lower volume
    {
        if (global.volumeLevel > 0)
            global.volumeLevel -= 1;
        
        audio_master_gain(global.volumeLevel/100);  //set master gain
    }
}

