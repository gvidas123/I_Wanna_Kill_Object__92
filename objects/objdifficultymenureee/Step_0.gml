if	keyboard_check_pressed(vk_shift) {
	if (file_exists("the_save")) {
		var b = file_text_open_read("the_save");
		c = file_text_read_real(b);
		show_debug_message(c);
		if (c == 1) {}
	
		file_text_close(b);
	}
	else {room_goto(rBossRoom);}
	
}
room_goto(rBossRoom);