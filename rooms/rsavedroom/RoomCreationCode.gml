if (file_exists("Data\\save"+string(global.savenum))) {
scrLoadGame(true);
}
else room_goto_next();