/// @description room checks

if (!instance_exists(objPlayMusic))  //make sure the play music object isn't in the current room
   // scrGetMusic();  //find and play the proper music for the current room

room_speed = 50;    //make sure game is running at the correct frame rate
scrSetRoomCaption();    //make sure window caption stays updated

