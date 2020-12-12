// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActionExcute(){
	var i, px, py;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		
		if (t_id.T_Move){
			t_id.T_Move = false;
			t_id.P_Direction = t_id.T_Direction;
			
			px = t_id.P_X;
			py = t_id.P_Y;
			
			switch (t_id.P_Direction){
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
			t_id.P_X = px;
			t_id.P_Y = py;
		}
    }
}