/// linear_path_interupt(xgoal, ygoal, dist)


var xg = argument0;
var yg = argument1;
var dist = argument2;

var gp = Level.grid_path;
var iswall;
var lx, ly;
var dir = point_direction(x, y, xg, yg);

for(var i = 0 ; i <=  dist; i+=32){
    lx = lengthdir_x(i, dir);
    ly = lengthdir_y(i, dir);
    
    iswall =  mp_grid_get_cell(gp, (x+lx)div CELL_WIDTH, (y+ly)div CELL_HEIGHT);

    //path is interupted
    if(iswall < 0){
        return true;
        exit;
    }
}

return false;
