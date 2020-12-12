// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TryMoveForward(xx, yy, op){
	var px, py;
	px = xx;
	py = yy;
	switch (op){
		case OP.Up:
			py--;
			break;
		case OP.Down:
			py++;
			break;
		case OP.Left:
			px--;
			break;
		case OP.Right:
			px++;
			break;
	}
	if (px < 0) or (px >= obj_room.MaxX) or
		(py < 0) or (py >= obj_room.MaxY)
		return false;
	
	var statu = false;
	var list, t_id, subtype, i;
    list = GetIDListIn(px, py);
	
    for (i = 0 ; i < array_length_1d(list) ; ++i){
        t_id = list[i];
		subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;
		if (CheckRule(subtype, RULE.R_Stop))
			statu = true;
    }
	if (statu) return false;
	
    statu = false;
	
	for (i = 0 ; i < array_length_1d(list) ; ++i){
        t_id = list[i];
		subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;
		if (CheckRule(subtype, RULE.R_Push))
			statu = true;
    }
	if (statu) {
		statu = TryMoveForward(px, py, op);
		if (statu) {
			for (i = 0 ; i < array_length_1d(list) ; ++i){
				t_id = list[i];
				subtype = t_id.P_Subtype;
				if (t_id.P_Type == TYPE.Text)
					subtype = SUBTYPE.Text;
				if (CheckRule(subtype, RULE.R_Push)){
					t_id.T_Direction = op;
					t_id.T_Move = true;
				}
			}
			return true;
		}
		return false;
	}
	else return true;
}