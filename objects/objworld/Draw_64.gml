/// @description draw debug overlay

if (global.debugOverlay)
{
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    draw_set_font(fDefault12);
    
    var drawX = 0, drawY = 0, drawAlign = 0;
    if (instance_exists(objPlayer))
    {
        drawX = objPlayer.x;
        drawY = objPlayer.y;
        drawAlign = objPlayer.x mod 3;
    }
    
    scrDrawTextOutline(20,20,"X: "+string(drawX),c_black,c_white);
    scrDrawTextOutline(20,40,"Y: "+string(drawY),c_black,c_white);
    scrDrawTextOutline(20,60,"Align: "+string(drawAlign),c_black,c_white);
    scrDrawTextOutline(20,80,"Room name: "+room_get_name(room),c_black,c_white);
    scrDrawTextOutline(20,100,"Room number: "+string(room),c_black,c_white);
    scrDrawTextOutline(20,120,"God mode: "+string(global.debugNoDeath),c_black,c_white);
    scrDrawTextOutline(20,140,"Infinite jump: "+string(global.debugInfJump),c_black,c_white);
    scrDrawTextOutline(20,160,"FPS: "+string(fps),c_black,c_white);
    scrDrawTextOutline(20,180,"Real FPS: "+string(fps_real),c_black,c_white);
}

///draw pause screen

if (global.gamePaused)  //check if game is paused to draw the pause screen
{
    draw_clear(c_black);
    
    if (surface_exists(global.pauseSurf))       //check if surface exists before drawing it
        draw_surface(global.pauseSurf,0,0);
    
    draw_set_color(c_black);
    draw_set_alpha(0.4);
    
    draw_rectangle(-1,-1,display_get_gui_width(),display_get_gui_height(),0);    //darken the paused screen
    
    draw_set_alpha(1);
    
    draw_set_color(c_white);
    
    draw_set_halign(fa_center);
    draw_set_font(fDefault30);
    
    draw_text(display_get_gui_width()/2,display_get_gui_height()/2 - 24,string_hash_to_newline("PAUSE"));
    
    draw_set_halign(fa_left);
    draw_set_font(fDefault18);
    
    var t = global.timer;
    var timeText = string(t div 3600) + ":";
    t = t mod 3600;
    timeText += string(t div 600);
    t = t mod 600;
    timeText += string(t div 60) + ":";
    t = t mod 60;
    timeText += string(t div 10);
    t = t mod 10;
    timeText += string(floor(t));
    
    draw_text(20,516,string_hash_to_newline("Volume: " + string(global.volumeLevel) + "%"));
    draw_text(20,541,string_hash_to_newline("Deaths: " + string(global.death)));
    draw_text(20,566,string_hash_to_newline("timer: " + timeText));
}

///draw debug mode text when we're on the title screen

if (global.debugMode && room == rTitle)
{
    draw_set_color(c_red);
    draw_set_font(fDefault12);
    draw_set_halign(fa_left);
    
    draw_text(34,34,string_hash_to_newline("Debug mode"));
}

