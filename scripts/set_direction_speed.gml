///set_direction_speed(direction, speed);
/*
    This script sets a direction and acceleration
    to a movement entity. This acceleration will NOT be relative to 
    the previous speed of that entity. It works very much like
    motion_set.
*/

var dir = argument[0]; // Direction value
var spd = argument[1]; // Speed value

hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);
