// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatuInit(){
	var i;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		t_id.S_Rule = false;
		t_id.S_Win = false;
	}
	obj_ruletable.WinnerPosition = array_create_2D(obj_room.MaxX, obj_room.MaxY, 10000);
}