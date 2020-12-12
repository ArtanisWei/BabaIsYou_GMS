// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function GetIDListIn(xx, yy){
    var list = [];
    var cnt = 0;
    var i;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
        if ((t_id.P_X == xx) and (t_id.P_Y == yy)){
            list[cnt] = t_id;
			cnt++;
        }
    }
    return list;
}