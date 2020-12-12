// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TransCheck(){
	var i;
	var killList = [], killCnt = 0;
    for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
        var t_id = instance_find(obj_entity, i);
		if (t_id.P_Type == TYPE.Text) continue;
		var subtype = t_id.P_Subtype;
		var target = obj_ruletable.DefaultTransTable[subtype];
		if (target < SUBTYPE.NounEnd){
			CreateEntity(t_id.P_X, t_id.P_Y, TYPE.Item, target);
			killList[killCnt] = t_id;
			killCnt++;
		}
	}
	for (i = 0 ; i < killCnt ; ++i){
		instance_destroy(killList[i])
	}
}