// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_create_2D(x, y, defaultV){
	var temp = []
	for(var i = 0; i < x; i++){
		for(var j = 0; j < y; j++){
			temp[i, j] = defaultV;
		}
	}
	return temp;
}