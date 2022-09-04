select = 0;
xSelector = 120;
ySelector = 24;
xSeperation = 560;
ySeperation = 40;

settingButton = false;     //sets whether or not a button is getting set
resetPrompt = false;    //shows the message that controls were reset

strSelect[0] = "Controller Index";
strSelect[1] = "Left Button";
strSelect[2] = "Right Button";
strSelect[3] = "Up Button";
strSelect[4] = "Down Button";
strSelect[5] = "Jump Button";
strSelect[6] = "Shoot Button";
strSelect[7] = "Restart Button";
strSelect[8] = "Skip Button";
strSelect[9] = "Suicide Button";
strSelect[10] = "Pause Button";
strSelect[11] = "Reset Controls";

//get current controls
strButton[0] = string(global.controllerIndex);
strButton[1] = scrGetControllerBind(global.leftButton[1]);
strButton[2] = scrGetControllerBind(global.rightButton[1]);
strButton[3] = scrGetControllerBind(global.upButton[1]);
strButton[4] = scrGetControllerBind(global.downButton[1]);
strButton[5] = scrGetControllerBind(global.jumpButton[1]);
strButton[6] = scrGetControllerBind(global.shootButton[1]);
strButton[7] = scrGetControllerBind(global.restartButton[1]);
strButton[8] = scrGetControllerBind(global.skipButton[1]);
strButton[9] = scrGetControllerBind(global.suicideButton[1]);
strButton[10] = scrGetControllerBind(global.pauseButton[1]);
strButton[11] = "";

if (strButton[0] == "-1") strButton[0] = "Disabled";

playerIndex = 0;

