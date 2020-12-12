/// @description Init the default rule
// You can write your code in this editor


//Use 1 is so ugly ...
//RuleTable : subtype * rules

DefaultRuleTable = 1;
DefaultTransTable = 1;
WinnerPosition = 1;

DefaultRuleTable = array_create_2D(SUBTYPE.length, RULE.length, false);
DefaultRuleTable[SUBTYPE.Text, RULE.R_Push] = true;

DefaultTransTable = array_create(SUBTYPE.length, SUBTYPE.length);

DefaultJumpTable = array_create(SUBTYPE.length, 100000);