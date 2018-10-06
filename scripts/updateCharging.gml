//Charging Punch
if chargePower < chargePunch3 {
    chargePower += chargeInc;
}
chargeGravity = 0.40;
chargeAirRes = 0.20;

//Defining Level
if chargePower < chargePunch1 {
    chargeLevel = 0;
}

if (chargePower > chargePunch1) && (chargePower < chargePunch2)
{
    chargeLevel = 1;
    vibeL = 0.2;
    vibeR = 0.2;
    gamepad_set_vibration(joySlot, vibeL, vibeR);
}

if (chargePower > chargePunch2) && (chargePower < chargePunch3)
{
    chargeLevel = 2;
    vibeL = 0.5;
    vibeR = 0.5;
    gamepad_set_vibration(joySlot, vibeL, vibeR);
}

if (chargePower = chargePunch3)
{
    chargeLevel = 3;
    vibeL = 1;
    vibeR = 1;
    gamepad_set_vibration(joySlot, vibeL, vibeR);
}

//Sprite
image_speed = 0.2;

if chargeLevel < 3
{
    sprite_index = chargeSprite;
}

if chargeLevel = 3 && sprite_index != charge3Sprite && sprite_index != charge2Sprite {
    image_index = 0;
    sprite_index = charge2Sprite;
}

if sprite_index = charge2Sprite && image_index > (image_number - 1) && sprite_index != charge3Sprite {
    image_index = 0;
    sprite_index = charge3Sprite;
}
