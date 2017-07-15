///move(spd, dir, ignoreClamp)
//
// written by Seth Coster
//
/// @arg speed
/// @arg direction
// handle using hvel and vvel


//get args 
var spd = argument0; //going a certain speed
var dir = argument1; //in a certain direction
var clam = argument2; 

//target destinations
hvel += (lengthdir_x(spd,dir));
vvel += (lengthdir_y(spd,dir));

//clamp values
if(clam){
    hvel = clamp(hvel, -my_move_speed_max, my_move_speed_max);
    vvel = clamp(vvel, -my_move_speed_max, my_move_speed_max);
}

//if place is free, go there...
if !grid_place_meeting(x+hvel,y+vvel) {
    if !grid_place_meeting(x, y){
        updatexy(hvel, vvel);
    }
} else { 
    //collide
    //collide_grid(hvel, vvel);
    //angle sweep for slippery movement   
    var sweep_interval = 15;
    for ( var angle = sweep_interval; angle < 90; angle += sweep_interval) {
        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) { 
            //check angles     
            var angle_to_check = dir+angle*multiplier;
            hvel = round(lengthdir_x(spd,angle_to_check));
            vvel = round(lengthdir_y(spd,angle_to_check));
            //place found?
            // extra bound checking for corner phasing
            if !grid_place_meeting(x+hvel,y+vvel) {
                updatexy(hvel, vvel);
                exit;
            }  
        }
    }
}
