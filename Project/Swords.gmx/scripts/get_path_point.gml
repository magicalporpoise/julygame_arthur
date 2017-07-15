/// get path_point(x, y)

var tempx = (argument0 div CELL_WIDTH)*CELL_WIDTH + CELL_WIDTH/2;
var tempy = (argument1 div CELL_HEIGHT)*CELL_HEIGHT + CELL_HEIGHT/2;

if(mp_grid_path(Level.grid_path, path, x, y, tempx, tempy, true)){

    path_start(path, 3, path_action_stop, false);

}
