// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomChange(jumpto){
	switch(jumpto){
		case 0:
			room_goto(RM_Level0);
			break;
		case 1:
			room_goto(RM_Level1);
			break;
		case 2:
			room_goto(RM_Level2);
			break;
		case 3:
			room_goto(RM_Level3);
			break;
		case 4:
			room_goto(RM_Level4);
			break;
		case 5:
			room_goto(RM_Level5);
			break;
	}
}