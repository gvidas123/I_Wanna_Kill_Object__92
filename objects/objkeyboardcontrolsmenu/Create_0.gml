select = 0;
xSelector = 120;
ySelector = 48;
xSeperation = 560;
ySeperation = 40;

settingKey = false;     //sets whether or not a key is getting set
resetPrompt = false;    //shows the message that controls were reset

strSelect[0] = "Left Button";
strSelect[1] = "Right Button";
strSelect[2] = "Up Button";
strSelect[3] = "Down Button";
strSelect[4] = "Jump Button";
strSelect[5] = "Shoot Button";
strSelect[6] = "Restart Button";
strSelect[7] = "Skip Button";
strSelect[8] = "Suicide Button";
strSelect[9] = "Pause Button";
strSelect[10] = "Reset Controls";

//get current controls
strKey[0] = scrGetKeybind(global.leftButton[0]);
strKey[1] = scrGetKeybind(global.rightButton[0]);
strKey[2] = scrGetKeybind(global.upButton[0]);
strKey[3] = scrGetKeybind(global.downButton[0]);
strKey[4] = scrGetKeybind(global.jumpButton[0]);
strKey[5] = scrGetKeybind(global.shootButton[0]);
strKey[6] = scrGetKeybind(global.restartButton[0]);
strKey[7] = scrGetKeybind(global.skipButton[0]);
strKey[8] = scrGetKeybind(global.suicideButton[0]);
strKey[9] = scrGetKeybind(global.pauseButton[0]);
strKey[10] = "";

playerIndex = 0;

