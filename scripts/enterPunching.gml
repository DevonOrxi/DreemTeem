//Punch to kill
add_movement_direction_acceleration(angle, chargePunch1);

//Change variables
punchTime = chargePunch1;
angleBase = angle;
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
    inst.level = chargePunch1;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
    case 3:
    var inst = instance_create(x, y, hitBox1);
    inst.hitId = 3;
    inst.playerHit = playerId;
    inst.level = chargePunch1;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
    case 4:
    var inst = instance_create(x, y, hitBox1);
    inst.hitId = 4;
    inst.playerHit = playerId;
    inst.level = chargePunch1;
    inst.image_angle = image_angle;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    break;
}

chargePower = 0;

//Sprite
image_index = 0;
sprite_index = punchSprite;

if image_index > (image_number -2) {
    image_index = image_number -1;
}

//Sound
audio_stop_sound(sound13_Charging);
audio_play_sound(sound12_Whoosh, 80, false);
