draw_set_color(c_black);
draw_set_font(fDefault30);
draw_set_halign(fa_left);

for(var i = 0; i < optionsNum; i++)
    draw_text(xSelector,ySelector+(ySeperation*i),string_hash_to_newline(strSelect[i]));

draw_set_halign(fa_right);

if (global.muteMusic)
    draw_text(xSelector+xSeperation,ySelector,string_hash_to_newline("Off"));
else
    draw_text(xSelector+xSeperation,ySelector,string_hash_to_newline("On"));

draw_text(xSelector+xSeperation,ySelector+ySeperation,string_hash_to_newline(string(global.volumeLevel) + "%"));
    
if (global.fullscreenMode)
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*2),string_hash_to_newline("Fullscreen"));
else
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*2),string_hash_to_newline("Windowed"));

if (global.smoothingMode)
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*3),string_hash_to_newline("On"));
else
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*3),string_hash_to_newline("Off"));

if (global.vsyncMode)
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*4),string_hash_to_newline("On"));
else
    draw_text(xSelector+xSeperation,ySelector+(ySeperation*4),string_hash_to_newline("Off"));

draw_sprite(sprPlayerIdle,playerIndex,xSelector-16,ySelector+(ySeperation*select)+26);

scrDrawButtonInfo(false);

