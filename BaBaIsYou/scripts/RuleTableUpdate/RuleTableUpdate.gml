// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RuleTableUpdate(){
    var xx, yy;
    var list, i, j, l;
	var ruleList;
    for (xx = 0 ; xx < obj_room.MaxX ; ++xx){
        for (yy = 0 ; yy < obj_room.MaxY ; ++yy){
            list = GetIDListIn(xx, yy);
            for (i = 0 ; i < array_length_1d(list) ; ++i){
                var t_id = list[i];
				if (t_id.P_Type != TYPE.Text) continue;
                if (IsTextNoun(t_id.P_Subtype)){
                    var dict;
                    dict[0] = OP.Right;
                    dict[1] = OP.Down;
                    for (j = 0 ; j < 2 ; ++j){
                        ruleList = FindRule(xx, yy, dict[j]);
                        for (l = 0 ; l < array_length_1d(ruleList) ; ++l) {
							AddNewRule(t_id.P_Subtype, ruleList[l]);
                            t_id.S_Rule = true;
							if (ruleList[l] == SUBTYPE.Win){
								++l;
								AddNewJump(t_id.P_Subtype, ruleList[l]);
							}
                        }
                    }
                }
            }
        }
	}
}