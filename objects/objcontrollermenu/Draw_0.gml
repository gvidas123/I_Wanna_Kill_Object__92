draw_set_color(c_black);
draw_set_font(fDefault24);

for(var i = 0; i < 12; i += 1)
{
    draw_set_halign(fa_left);
    draw_text(xSelector,ySelector+i*ySeperation+32,string_hash_to_newline(strSelect[i]));
    
    draw_set_halign(fa_right);
    
    if(i == select)
    {
        draw_sprite(sprPlayerIdle,playerIndex,xSelector-20,ySelector+i*ySeperation+52);
        
        if (settingButton) //button prompt
        {
            draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline("Press button to set"));
        }
    }
    
    if (!settingButton || i != select)    //shows current button
    {
        draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline(strButton[i]));
    }
    
    if (resetPrompt && i == 11) //reset controls prompt
    {
        draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline("Controls reset!"));
    }
}

if (global.controllerIndex != -1)
{
    draw_set_color(c_maroon);
    draw_set_font(fDefault12);
    draw_set_halign(fa_left);
    
    var controllerText = "Current controller: ";
    
    if (gamepad_is_connected(global.controllerIndex))//say what type of controller is connected (i.e. Xbox, Playstation)
    { 
        controllerText += gamepad_get_description(global.controllerIndex);
    }
    else
    {
        controllerText += "None";
    }
    
    draw_text(xSelector+2,ySelector+(12)*ySeperation+34,string_hash_to_newline(controllerText));
    
    draw_set_color(c_black);
}

scrDrawButtonInfo(false);

