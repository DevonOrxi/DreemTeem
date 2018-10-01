startedState = true;

//Enable Movement
if connect = false && hurting = false{
    move_movement_entity(); //Refreshes position every step
}

switch state {
    case playerState.IDLE :
        updateIdle();
        break;
    case playerState.CHARGING :
        updateCharging();
        break;
    case playerState.PUNCHING :
        updatePunching();
        break;
    case playerState.CONNECT :
        updateConnect();
    case playerState.PUNCH_TO_IDLE :
        break;
    case playerState.HURTING :
        updateHurting();
        break;
    case playerState.FALLING :
        updateFalling();
        break;
    case playerState.LANDING :
        updateLanding();
        break;
    case playerState.LAND_TO_IDLE :
        break;
    }
    

//Death and respawn
if y > (room_height + sprite_height) && alive = true {
    alive = false;
    instance_create(x, room_height, deathEffect);
    alarm[8] = respawnTime;
}

if y < -50 && alive = true {
    alive = false;
    instance_create(x, 0, deathEffect);
    alarm[8] = respawnTime;
}

if x > (room_width + sprite_width/2) && alive = true {
    alive = false;
    instance_create(room_width, y, deathEffect);
    alarm[8] = respawnTime;
}

if x < -50 && alive = true {
    alive = false;
    instance_create(0, y, deathEffect);
    alarm[8] = respawnTime;
}

//Detect being hit
if playerId = 1
{
    if (place_meeting(x, y, hitBox2))
    {
        hitBox2.connect = true;
        hit = 2;
        deathAngle = hitBox2.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox3))
    {
        hitBox3.connect = true;
        hit = 3;
        deathAngle = hitBox3.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox4))
    {
        hitBox4.connect = true;
        hit = 4;
        deathAngle = hitBox4.angle;
        hurting = true;
    }
}

if playerId = 2
{
    if (place_meeting(x, y, hitBox1))
    {
        hitBox1.connect = true;
        hit = 1;
        deathAngle = hitBox1.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox3))
    {
        hitBox3.connect = true;
        hit = 3;
        deathAngle = hitBox3.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox4))
    {
        hitBox4.connect = true;
        hit = 4;
        deathAngle = hitBox4.angle;
        hurting = true;
    }
}

if playerId = 3
{
    if (place_meeting(x, y, hitBox2))
    {
        hitBox2.connect = true;
        hit = 2;
        deathAngle = hitBox2.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox1))
    {
        hitBox1.connect = true;
        hit = 1;
        deathAngle = hitBox1.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox4))
    {
        hitBox4.connect = true;
        hit = 4;
        deathAngle = hitBox4.angle;
        hurting = true;
    }
}

if playerId = 4
{
    if (place_meeting(x, y, hitBox2))
    {
        hitBox2.connect = true;
        hit = 2;
        deathAngle = hitBox2.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox3))
    {
        hitBox3.connect = true;
        hit = 3;
        deathAngle = hitBox3.angle;
        hurting = true;
    }
    
    if (place_meeting(x, y, hitBox1))
    {
        hitBox1.connect = true;
        hit = 1;
        deathAngle = hitBox1.angle;
        hurting = true;
    }
}

//Sprite
if connect = false && hurting = false && charging = false{
    image_speed = 0.1;
}

if sprite_index != punch && sprite_index != punch2 && sprite_index != punch3
{
    if hurting = false
    {
    if angle < 270 && angle > 90 {
        image_xscale = -1;
    }
    else {
        image_xscale = 1;
    }
    }
}

if sprite_index = punch or sprite_index = punch2 or sprite_index = punch3
{
    if connect = false
    {
    if image_index <= 3
    {   
        image_angle = angleBase;
    }
    else
    {
        image_angle = 0;
    }
    
    if angle < 270 && angle > 90 {
        image_yscale = -1;
        image_xscale = 1;
    }
    }
    //image_speed = 0.2;
}
