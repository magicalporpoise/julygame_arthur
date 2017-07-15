/// decelerate(rate, affectH, affectV, cap, update)
//
//  hvel -- the horizontal
//  vvel -- the vertical velocity
//  affectH/V -- which to affect
//  rate -- percentage (0, 0.1, ..., 0.9, 1)

// get args
r = argument0;
affectH = argument1;
affectV = argument2;
c = argument3;

//lower them
if(affectH) hvel*= r;
if(affectV) vvel*= r;

//cap them
if(abs(hvel) < c){ 
    hvel = 0;
}

if(abs(vvel) < c){
    vvel = 0;
}

// clamp them
hvel = clamp(hvel, -my_move_speed_max, my_move_speed_max);
vvel = clamp(vvel, -my_move_speed_max, my_move_speed_max);

if(argument4)updatexy(hvel, vvel);
