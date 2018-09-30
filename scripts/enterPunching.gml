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
    instance_create(x, y, hitBox1);
    break;
    case 2:
    instance_create(x, y, hitBox2);
    break;
    case 3:
    instance_create(x, y, hitBox3);
    break;
    case 4:
    instance_create(x, y, hitBox4);
    break;
}

if playerId = 4 {
    instance_create(x, y, hitBox4);
}

//Sprite
image_index = 0;
sprite_index = punch;

audio_stop_sound(sound13_Charging);
audio_play_sound(sound12_Whoosh, 80, false);
