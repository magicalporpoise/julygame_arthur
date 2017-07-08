///move(spd, dir)
/// @arg speed
/// @arg direction

//get args 
var spd = argument0; //going a certain speed
var dir = argument1; //in a certain direction

//old x and y
//var xp = x;
//var yp = y;

//move
move(spd, dir);

//leave dust clouds
//*****
//var curx = x;
//var cury = y;
//var dust_line = point_direction(xp, yp, curx, cury);
var dust = instance_create(x, y, obj_effect_dust);
dust.image_angle = image_angle;
//*****
