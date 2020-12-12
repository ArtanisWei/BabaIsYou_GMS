// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatuCheck(){
	var i;
	var TEM;
	var sinkTable = 1;
	sinkTable = array_create_2D(obj_room.MaxX, obj_room.MaxY, -1);
    
	for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		var subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;	
		if (CheckRule(subtype, RULE.R_Sink))
			sinkTable[t_id.P_X, t_id.P_Y] = t_id;
	}
	
	var sinkList, cnt = 0;
	for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		var subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;	
		if (sinkTable[t_id.P_X, t_id.P_Y] > 0)
			if (not CheckRule(subtype, RULE.R_Sink)){
				sinkList[cnt] = sinkTable[t_id.P_X, t_id.P_Y];
				sinkTable[t_id.P_X, t_id.P_Y] = -1;
				++cnt;
				sinkList[cnt] = t_id;
				++cnt;
			}
	}
	for (i = 0 ; i < cnt ; ++i)
		instance_destroy(sinkList[i]);
	
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		var subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;
		
		
		if (CheckRule(subtype, RULE.R_Win)){
			t_id.S_Win = true;
			TEM = CheckJump(subtype);
			if (obj_ruletable.WinnerPosition[t_id.P_X, t_id.P_Y] > TEM)
				obj_ruletable.WinnerPosition[t_id.P_X, t_id.P_Y] = TEM;
		}
	}
}