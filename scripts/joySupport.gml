//Define joyslot depending on playerId
joySlot = joyManager.playerJoy[playerId - 1];

//Analog
anaRight = (gamepad_axis_value(joySlot, gp_axislh) > global.joy_stick_threshold);
anaLeft = (gamepad_axis_value(joySlot, gp_axislh) < -global.joy_stick_threshold); 
anaUp = (gamepad_axis_value (joySlot, gp_axislv) < -global.joy_stick_threshold);
anaDown = (gamepad_axis_value (joySlot, gp_axislv) > global.joy_stick_threshold);

//R1
joyR1 = gamepad_button_check(joySlot,gp_shoulderr);
joyR1P = gamepad_button_check_pressed(joySlot,gp_shoulderr);
joyR1R = gamepad_button_check_released(joySlot,gp_shoulderr);

//R2
joyR2 = gamepad_button_check(joySlot,gp_shoulderrb);
joyR2P = gamepad_button_check_pressed(joySlot,gp_shoulderrb);
joyR2R = gamepad_button_check_released(joySlot,gp_shoulderrb);

//Aim Angle - Chequea si el jugador está moviendo el stick derecho y guarda la dirección en angle
pointdir = point_direction(
    0,
    0,
    gamepad_axis_value(joySlot,gp_axisrh),
    gamepad_axis_value(joySlot,gp_axisrv));

if  gamepad_axis_value(joySlot,gp_axisrh) > global.joy_stick_threshold or 
    gamepad_axis_value(joySlot,gp_axisrh) < -global.joy_stick_threshold or
    gamepad_axis_value(joySlot,gp_axisrv) > global.joy_stick_threshold or
    gamepad_axis_value(joySlot,gp_axisrv) < -global.joy_stick_threshold {
        angle = pointdir;
}
