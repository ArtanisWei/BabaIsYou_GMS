// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CreateEntity(xx, yy, type, subtype){
	var dx = xx * 64 + obj_room.Padding;
	var dy = yy * 64 + obj_room.Padding;
	var objtype;
	switch(type){
		case (TYPE.Text):
			switch (subtype){
				case (SUBTYPE.BaBa):
					objtype = obj_t_BaBa;
					break;
				case (SUBTYPE.Wall):
					objtype = obj_t_Wall;
					break;
				case (SUBTYPE.Flag):
					objtype = obj_t_Flag;
					break;
				case (SUBTYPE.Text):
					objtype = obj_t_Text;
					break;
				case (SUBTYPE.Rock):
					objtype = obj_t_Rock;
					break;
				case (SUBTYPE.You):
					objtype = obj_t_You;
					break;
				case (SUBTYPE.Win):
					objtype = obj_t_Win;
					break;
				case (SUBTYPE.Stop):
					objtype = obj_t_Stop;
					break;
				case (SUBTYPE.Push):
					objtype = obj_t_Push;
					break;
				case (SUBTYPE.Is):
					objtype = obj_t_Is;
					break;
			}
			break;
		case (TYPE.Item):
			switch(subtype){
				case (SUBTYPE.BaBa):
					objtype = obj_e_BaBa;
					break;
				case (SUBTYPE.Flag):
					objtype = obj_e_Flag;
					break;
				case (SUBTYPE.Wall):
					objtype = obj_e_Wall;
					break;
				case (SUBTYPE.Rock):
					objtype = obj_e_Rock;
					break;
			}
			break;
	}
	pid = instance_create_layer(dx, dy, "Instances", objtype);
	with (pid){
		P_X = xx;
		P_Y = yy;
		P_Set = true;
	}
}