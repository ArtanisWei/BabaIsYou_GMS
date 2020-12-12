/// @description Run a test program...
// You can write your code in this editor

if (room == RM_Level1){
	exit;
	
	CreateEntity(1, 3, TYPE.Text, SUBTYPE.BaBa);
	CreateEntity(2, 3, TYPE.Text, SUBTYPE.Is);
	CreateEntity(3, 3, TYPE.Text, SUBTYPE.You);
	CreateEntity(3, 1, TYPE.Text, SUBTYPE.Wall);
	CreateEntity(4, 1, TYPE.Text, SUBTYPE.Is);
	CreateEntity(5, 1, TYPE.Text, SUBTYPE.Stop);
	CreateEntity(5, 3, TYPE.Text, SUBTYPE.Rock);
	CreateEntity(6, 3, TYPE.Text, SUBTYPE.Is);
	CreateEntity(7, 3, TYPE.Text, SUBTYPE.Push);
	CreateEntity(7, 1, TYPE.Text, SUBTYPE.Flag);
	CreateEntity(8, 1, TYPE.Text, SUBTYPE.Is);
	CreateEntity(9, 1, TYPE.Text, SUBTYPE.Win);
	CreateEntity(7, 2, TYPE.Text, SUBTYPE.Is);

	CreateEntity(1, 7, TYPE.Item, SUBTYPE.BaBa);
	for (var i = 4 ; i < 9 ; ++i){
		CreateEntity(i, 5, TYPE.Item, SUBTYPE.Wall);
		CreateEntity(i, 9, TYPE.Item, SUBTYPE.Wall);
	}
	for (var i = 6 ; i < 9 ; ++i){
		CreateEntity(4, i, TYPE.Item, SUBTYPE.Rock);
		CreateEntity(8, i, TYPE.Item, SUBTYPE.Rock);
	}
	CreateEntity(6, 7, TYPE.Item, SUBTYPE.Flag);

	//displayWidth = ;
	//displayHeight= 64 * obj_room.MaxY + 2 * obj_room.Padding;
	window_set_size(1280, 900);
	alarm[0] = 1;
	obj_room.MaxX = 11;
	obj_room.MaxY = 11;
	room_width = 64 * obj_room.MaxX + 2 * obj_room.Padding;
	room_height= 64 * obj_room.MaxY + 2 * obj_room.Padding
	RuleTableInit();
	RuleTableUpdate();
	StatuCheck();
}
