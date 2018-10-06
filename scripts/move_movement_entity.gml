///move_movement_entity()
/*
    This script updates the position of the movement entity
    according to its horizontal speeds and vertical speeds.
    This script should be called at the end of the STEP EVENT for each
    object you want using the movement scripts
*/

var yslope = 0; // Used to calculate movement along a slope

// Air jump reset
if (place_meeting(x, y+1, collision_object)) {
    air_jump = 1;
}

// Get the total speeds
var hspd = hsp[0]+hsp[1];
var vspd = vsp[0]+vsp[1];


// Horizontal check
if (place_meeting(x+hspd, y, collision_object)) {
    // Move up a slope
    while (place_meeting(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
        yslope++;
    }
    
    if (place_meeting(x+hspd, y-yslope, collision_object)) {
        // Move to contact and bounce
        while (!place_meeting(x+sign(hspd), y, collision_object)) {
            x+=sign(hspd);
        }
        
        // Update the horizontal speeds
        hspd = 0;
        hsp[0] = 0;
        hsp[1] = -(hsp[1])*bounce;
        
        // Stop bounce at low values
        if (abs(hsp[1]) < 1) hsp[1] = 0;
    } else {
        y-=yslope;
    }
}
if (!place_meeting(x+hspd, y, collision_object)) {
    x += hspd;
}

// Vertical collision check
var slam = false;
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object))
        y+=sign(vspd);
    slam = true;
} else {
    var moved = false;
    with (oneway_object) {
        if (!moved &&
            vspd >= 0 &&
            y >= round(other.y + other.sprite_height / 2) &&
            place_meeting(x, y - vspd, other)) {
                while (!place_meeting(x, y - sign(vspd), other))
                    other.y += sign(vspd);
                moved = true;
                slam = true;
            }
    }
}

if slam {
    // Update the vertical speeds
    vspd = 0;
    vsp[0] = 0;
    vsp[1] = -vsp[1]*bounce;
    
    // Stop bounce at low values
    if (abs(vsp[1]) < 1) vsp[1] = 0;
}

y += vspd;


/// Apply gravity
if (!place_meeting(x, y+1, collision_object)) {
    vsp[0] += grav - chargeGravity;
}

// Apply friction
if (place_meeting(x, y+1, collision_object) || place_meeting(x, y+1, oneway_object)) {
    if (horizontal_move_input == false) {
        hsp[0] = approach(hsp[0], 0, fric);
    }
    
    hsp[1] = approach(hsp[1], 0, fric);
}

// Air resistance
if (horizontal_move_input == false) {
    hsp[0] = approach(hsp[0], 0, air_res + chargeAirRes);
}
if (vertical_move_input == false && grav == 0) {
    vsp[0] = approach(vsp[0], 0, air_res + chargeAirRes);
}

hsp[1] = approach(hsp[1], 0, air_res + chargeAirRes);
vsp[1] = approach(vsp[1], 0, air_res + chargeAirRes);
