// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//There are some strange rules here :
//For a type : TEXT, It subtype will be changed to text for further use
function RuleTableInit(){
	var i, j; 
	for (i = 0 ; i < SUBTYPE.length ; ++i){
		obj_ruletable.DefaultTransTable[i] = SUBTYPE.length;
		obj_ruletable.DefaultJumpTable[i] = 10000;
		for (j = 0 ; j < RULE.length ; ++j)
			obj_ruletable.DefaultRuleTable[i, j] = false;
	}
	//Magic number, Might be rewrite later
	obj_ruletable.DefaultRuleTable[SUBTYPE.Text, RULE.R_Push] = true;
}