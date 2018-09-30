//Punch
add_movement_direction_acceleration(angle, force);
punchTime = force; //Make punching as long as the time the player charged
force = 0;
charging = false;
punching = true;
