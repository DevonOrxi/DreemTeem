//Define sprite slots
idleSprite = 0;
fallSprite = 0;
landSprite = 0;
hurtSprite = 0;
punchSprite = 0;
punch2Sprite = 0;
punch3Sprite = 0;
contactSprite = 0;
contact2Sprite = 0;
contact3Sprite = 0;
preChargeSprite = 0;
chargeSprite = 0;
charge2Sprite = 0;
charge3Sprite = 0;

//Assign according to playerId
if playerId = 1 {

    idleSprite = idle;
    fallSprite = fall;
    landSprite = land;
    hurtSprite = hurt;
    punchSprite = punch;
    punch2Sprite = punch2;
    punch3Sprite = punch3;
    contactSprite = contact;
    contact2Sprite = contact2;
    contact3Sprite = contact3;
    preChargeSprite = preCharge;
    chargeSprite = charge;
    charge2Sprite = charge2;
    charge3Sprite = charge3;
}

if playerId = 2 {

    idleSprite = idleP2;
    fallSprite = fallP2;
    landSprite = landP2;
    hurtSprite = hurtP2;
    punchSprite = punchP2;
    punch2Sprite = punch2P2;
    punch3Sprite = punch3P2;
    contactSprite = contactP2;
    contact2Sprite = contact2P2;
    contact3Sprite = contact3P2;
    preChargeSprite = preChargeP2;
    chargeSprite = chargeP2;
    charge2Sprite = charge2P2;
    charge3Sprite = charge3P2;
    
}

    //Angle
    if
    sprite_index != punchSprite &&
    sprite_index != punch2Sprite &&
    sprite_index != punch3Sprite &&
    sprite_index != contactSprite &&
    sprite_index != contact2Sprite &&
    sprite_index != contact3Sprite
        {
        if gotHit = false {
            if angle < 270 && angle > 90 {
                image_xscale = -1;
            }
            else {
                image_xscale = 1;
            }
        }
    }
