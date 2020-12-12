// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindRule(xx, yy, ops){
    var px = xx;
    var py = yy;
    switch (ops){
        case (OP.Right):{
            px++;
            break;
        }
        case (OP.Down):{
            py++;
            break;
        }
    }
    if (px == obj_room.MaxX) return [];
    if (py == obj_room.MaxY) return [];

    var flag = false;
    var list, t_id, i;
    list = GetIDListIn(px, py);
    for (i = 0 ; i < array_length_1d(list) ; ++i){
        t_id = list[i];
		if (t_id.P_Type != TYPE.Text) continue;
        if IsTextIs(t_id.P_Subtype) {
            flag = true;
            break;
        }
    }
    if (flag == false) return [];
    
    flag = false;
    list = GetAdjs(px, py, ops);
    if (array_length_1d(list) > 0)
    t_id.S_Rule = true;
    return list;
}