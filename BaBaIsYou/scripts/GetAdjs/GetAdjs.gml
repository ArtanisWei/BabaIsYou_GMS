// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function GetAdjs(xx, yy, ops){
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

    var list, t_id, i;
    var adjList, cnt = 0;
	adjList = [];
    list = GetIDListIn(px, py);
    for (i = 0 ; i < array_length_1d(list) ; ++i){
        t_id = list[i];
		if (t_id.P_Type != TYPE.Text) continue;
        if (IsTextAdj(t_id.P_Subtype) or (IsTextNoun(t_id.P_Subtype))){
            adjList[cnt] = t_id.P_Subtype;
			if (t_id.P_Subtype == SUBTYPE.Win){
				++cnt;
				adjList[cnt] = t_id.P_JumpTo;
			}
			t_id.S_Rule = true;
            ++cnt;
        }
    }
    return adjList;
}