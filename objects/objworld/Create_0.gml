//make sure we never have more than one world object

if (instance_number(object_index) > 1)
{
    instance_destroy();
}
else
{
    //initialize everything

    //initialize all variables
    scrInitializeGlobals();
    
    //load the current config file, sets default config if it doesn't exist
    scrLoadConfig();
    
    room_goto_next();
}
global.gameStarted = true; //sets game in progress (enables saving, restarting, etc.)
global.autosave = true;
if (file_exists("Data\\save"+string(global.savenum)))
file_delete("Data\\save"+string(global.savenum));
                    
