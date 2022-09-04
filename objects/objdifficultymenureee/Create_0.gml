if (file_exists("the_save")) {
	var b = file_text_open_read("the_save");
	c = file_text_read_real(b);
	if (c == 1) {instance_create(400,304,objSprWhiteCherry);}
}