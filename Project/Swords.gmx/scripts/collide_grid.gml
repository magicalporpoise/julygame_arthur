/// collide_grid(hvel, vvel)

var hvel = argument0;
var vvel = argument1;

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
