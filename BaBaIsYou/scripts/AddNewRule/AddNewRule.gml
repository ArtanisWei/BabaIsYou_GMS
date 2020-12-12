// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddNewRule(subtype, rule){
	if (IsTextAdj(rule)){
		rule = rule - SUBTYPE.NounEnd - 1;
		obj_ruletable.DefaultRuleTable[subtype, rule] = true;
	}
	else{
		obj_ruletable.DefaultTransTable[subtype] = rule;
	}
		//show_debug_message("New Rule Find : " + string(subtype) + " " + string(rule));
}