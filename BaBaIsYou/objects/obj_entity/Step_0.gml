/// @description Insert description here
// You can write your code in this editor

if (P_Set){
	x = P_X * 64 + obj_room.Padding;
	y = P_Y * 64 + obj_room.Padding;
}
else{
	//P_X = int(x / 64);
	//P_Y = int(y / 64);
	P_Set = true;
}