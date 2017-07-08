/// grid_place_meeting(x, y)
// args
var xx = argument0;
var yy = argument1;

// remember old position
var xp = x;
var yp = y;

//update position for bbox calcs
x = xx;
y = yy;

// for x meeting
var x_meet = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] == WALL) 
          or (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] == WALL); 
          
// for y meeting
var y_meet = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] == WALL) 
          or (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] == WALL);  
          
// move back
x = xp;
y = yp;

return (x_meet or y_meet);
