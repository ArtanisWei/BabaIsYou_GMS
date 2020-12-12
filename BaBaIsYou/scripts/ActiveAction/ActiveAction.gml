// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActiveAction(op){
	if (op == OP.Wait) exit;
	var i;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		
		var subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;
		if (not CheckRule(subtype, RULE.R_You)) continue;
		t_id.P_Direction = op;
		t_id.T_Direction = op;
		t_id.T_Move = TryMoveForward(t_id.P_X, t_id.P_Y, op);
    }
	
	for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		
		if (t_id.T_Move){
			t_id.T_Move = false;
			switch(t_id.T_Direction){
				case (OP.Up):
					t_id.P_Y--;
					break;
				case (OP.Down):
					t_id.P_Y++;
					break;
				case (OP.Left):
					t_id.P_X--;
					break;
				case (OP.Right):
					t_id.P_X++;
					break;
			}
		}
    }
}