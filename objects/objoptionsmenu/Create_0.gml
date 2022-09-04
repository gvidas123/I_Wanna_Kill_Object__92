select = global.menuSelectPrev[1];

xSelector = 124;
ySelector = 132;
xSeperation = 550;
ySeperation = 48;

optionsNum = 7; //sets number of separate options available

if (!global.controllerEnabled)  //remove controller settings menu if controllers are disabled
{
    optionsNum -= 1;
    ySelector += 32;
}

strSelect[0] = "Music";
strSelect[1] = "Volume Level";
strSelect[2] = "Screen Mode";
strSelect[3] = "Smoothing Mode";
strSelect[4] = "Vsync";
strSelect[5] = "Set Keyboard Controls";
strSelect[6] = "Controller Options";

playerIndex = 0;

