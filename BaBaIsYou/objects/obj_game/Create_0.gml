/// @description Mainly enum
// You can write your code in this editor

enum TYPE{
	Item, Text,
	length
}

enum SUBTYPE{
	//These are nouns
	BaBa, Wall, Flag, Text, Rock, Gear, Water,
	NounEnd,
	//These are adjs
	You, Win, Stop, Push, Sink,
	AdjEnd,
	//These are grammar
	Is,
	//For iter, we need a length
	length
}

enum RULE{
	R_You, R_Win, R_Stop, R_Push, R_Sink,
	//For iter, we need a length
	length
}

enum OP{
	Up, Down, Left, Right, Wait, Withdraw
}

cooldown = 0;
cooldown_Maxx = 8;