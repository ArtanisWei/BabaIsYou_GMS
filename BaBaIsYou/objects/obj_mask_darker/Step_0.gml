/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.01;
if (image_alpha > 0.99) and (not flag){
	flag = true;
	alarm[0] = 10;
}