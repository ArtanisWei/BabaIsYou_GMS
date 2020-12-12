/// @description Insert description here
// You can write your code in this editor

instance_create_layer(0, 0, "Mask", obj_mask_lighter);

var i;
for (i = 0 ; i < instance_number(obj_entity) ; ++i) {
	var t_id = instance_find(obj_entity, i);
	with (t_id){
		//show_debug_message(string(x) + " " + string(y));
		//show_debug_message(string(round(x/64)) + " " + string(round(y/64)));
		P_X = floor(x / 64);
		P_Y = floor(y / 64);
	}
}

MaxX = floor(room_width / 64);
MaxY = floor(room_height / 64);

StatuInit();
RuleTableInit();
RuleTableUpdate();
StatuCheck();