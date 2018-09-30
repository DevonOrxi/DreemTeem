//Defining punch level
if (force >= 5 && force < 15)
{
    punchLevel = 1;
    punchLevelForce = 10;
}

if (force >= 15 && force < 25)
{
    punchLevel = 2;
    punchLevelForce = 20;
}

if (force >= 25)
{
    punchLevel = 3;
    punchLevelForce = 30;
}

//Punch
add_movement_direction_acceleration(angle, punchLevelForce);
angleBase = angle;
punchTime = punchLevelForce; //Make punching as long as the time the player charged
punchLevelForce = 0;
force = 0;
charging = false;
punching = true;

//Create HitBox villero
switch playerId {
    case 1:
    var inst = instance_create(x, y, hitBox1);
    inst.level = punchLevel;
    break;
    case 2:
    var inst = instance_create(x, y, hitBox2);
    inst.level = punchLevel;
    break;
    case 3:
    var inst = instance_create(x, y, hitBox3);
    inst.level = punchLevel;
    break;
    case 4:
    var inst = instance_create(x, y, hitBox4);
    inst.level = punchLevel;
    break;
}

if playerId = 4 {
    instance_create(x, y, hitBox4);
}

//Sprite
image_index = 0;

switch punchLevel{
    case 1:
    sprite_index = punch;
    break;
    case 2:
    sprite_index = punch2;
    break;
    case 3:
    sprite_index = punch3;
    break;
}
