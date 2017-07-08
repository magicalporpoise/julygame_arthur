///move(spd, dir)
//
// written by Seth Coster
//
/// @arg speed
/// @arg direction
// handle using hvel and vvel

//get args 
var spd = argument0; //going a certain speed
var dir = argument1; //in a certain direction

//target destinations
hvel = round(lengthdir_x(spd,dir));
vvel = round(lengthdir_y(spd,dir));

//if place is free, go there...
if !grid_place_meeting(x+hvel,y+vvel) {
    if !grid_place_meeting(x, y){
        x += hvel;
        y += vvel;
    }
}else { 
    //collide x
    if(grid_place_meeting(x+hvel, y)){
        var unit_x = sign(hvel);
        while(!grid_place_meeting(x+unit_x,y)){
            x += unit_x;
        } 
        hvel = 0; //set xtarg to nothing
    }
    //collide y
    if(grid_place_meeting(x, y+vvel)){
        var unit_y = sign(vvel);
        while(!grid_place_meeting(x, y+unit_y)){
            y += unit_y;
        } 
        vvel = 0; //set ytarg to nothing
    }
    
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
                x += hvel;
                y += vvel;
                exit;
            }  
        }
    }
}




