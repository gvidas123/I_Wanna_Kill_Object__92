draw_set_color(c_black);
draw_set_font(fDefault24);

for(var i = 0; i < 11; i += 1)
{
    draw_set_halign(fa_left);
    draw_text(xSelector,ySelector+i*ySeperation+32,string_hash_to_newline(strSelect[i]));
    
    draw_set_halign(fa_right);
    
    if(i == select)
    {
        draw_sprite(sprPlayerIdle,playerIndex,xSelector-20,ySelector+i*ySeperation+52);
        
        if (settingKey) //key prompt
        {
            draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline("Press the key to set"));
        }
    }
    
    if (!settingKey || i != select)    //shows current key
    {
        draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline(strKey[i]));
    }
    
    if (resetPrompt && i == 10) //reset controls prompt
    {
        draw_text(xSelector+xSeperation,ySelector+i*ySeperation+32,string_hash_to_newline("Controls reset!"));
    }
}

scrDrawButtonInfo(false);

