/// collide_grid(hvel, vvel)

var hvel = argument0;
var vvel = argument1;

//collide x
    if(place_meeting(x+hvel, y, obj_enemy_par)){
        var unit_x = sign(hvel);
        while(!place_meeting(x+unit_x, y, obj_enemy_par)){
            x += unit_x;
            //show_debug_message("colliding with enemy: on X");
        } 
        //hvel = 0; //set xtarg to nothing
    }
    //collide y
    if(place_meeting(x, y+vvel, obj_enemy_par)){
        var unit_y = sign(vvel);
        while(!place_meeting(x, y+unit_y, obj_enemy_par)){
            y += unit_y;
            //show_debug_message("colliding with enemy: on Y");
        } 
        //vvel = 0; //set ytarg to nothing
    }
