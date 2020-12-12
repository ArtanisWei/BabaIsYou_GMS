// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CoreIteration(ops){	
	StatuInit();
	
	ActiveAction(ops);
	ActionExcute();

	RuleTableInit();
	RuleTableUpdate();
	
	TransCheck();
	StatuCheck();
	WinCheck();
	
	StatuInit();
	StatuCheck();
	RuleTableInit();
	RuleTableUpdate();
}