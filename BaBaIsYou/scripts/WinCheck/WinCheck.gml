// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WinCheck(){
	var i;
	var flag = false;
	var jumpto = 10000;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		var subtype = t_id.P_Subtype;
		if (t_id.P_Type == TYPE.Text)
			subtype = SUBTYPE.Text;
				
		if (not CheckRule(subtype, RULE.R_You)) continue;
		if (jumpto > obj_ruletable.WinnerPosition[t_id.P_X, t_id.P_Y])
			jumpto = obj_ruletable.WinnerPosition[t_id.P_X, t_id.P_Y];
	}
	if (jumpto != 10000){
		var pid = instance_create_layer(0, 0, "Mask", obj_mask_darker);
		pid.jumpTarget = jumpto;
	}
}