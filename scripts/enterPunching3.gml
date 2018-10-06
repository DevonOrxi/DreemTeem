//Punch to kill
add_movement_direction_acceleration(angle, chargePunch3);

//Change variables
punchTime = chargePunch3;
angleBase = angle;
chargePower = 0;
chargeGravity = 0;
chargeAirRes = 0;

//Create HitBox
switch playerId {
    case 1:
    var inst = instance_create(x + lengthdir_x(50,angleBase), y + lengthdir_y(50,angleBase), hitBox1);
    inst.hitId = 1;
    inst.playerHit = playerId;
    inst.level = chargeLevel;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
    case 2:
    var inst = instance_create(x, y, hitBox1);
    inst.hitId = 2;
    inst.playerHit = playerId;
    inst.level = chargePunch3;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
    case 3:
    var inst = instance_create(x, y, hitBox1);
    inst.hitId = 3;
    inst.playerHit = playerId;
    inst.level = chargePunch3;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
    case 4:
    var inst = instance_create(x, y, hitBox1);
    inst.hitId = 4;
    inst.playerHit = playerId;
    inst.level = chargePunch3;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
}

//Sprite
image_index = 0;
sprite_index = punch3Sprite;

if image_index > (image_number -2) {
    image_index = image_number -1;
}

//Sound
audio_stop_sound(sound13_Charging);
audio_play_sound(sound12_Whoosh, 80, false);
