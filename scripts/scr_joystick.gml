//Analog
anaRight = (gamepad_axis_value(0, gp_axislh) > 0.5);
anaLeft = (gamepad_axis_value(0, gp_axislh) < -0.5); 
anaUp = (gamepad_axis_value (0, gp_axislv) < -0.5);
anaDown = (gamepad_axis_value (0, gp_axislv) > 0.5);

//R1
joyR1 = gamepad_button_check(0,gp_shoulderr);
joyR1P = gamepad_button_check_pressed(0,gp_shoulderr);
joyR1R = gamepad_button_check_released(0,gp_shoulderr);

//R2
joyR2 = gamepad_button_check(0,gp_shoulderrb);
joyR2P = gamepad_button_check_pressed(0,gp_shoulderrb);
joyR2R = gamepad_button_check_released(0,gp_shoulderrb);

//Aim Angle - Chequea si el jugador está moviendo el stick derecho y guarda la dirección en angle
pointdir = point_direction(0,0,gamepad_axis_value(0,gp_axisrh),gamepad_axis_value(0,gp_axisrv));

if gamepad_axis_value(0,gp_axisrh) > 0.5 or gamepad_axis_value(0,gp_axisrh) < -0.5 or gamepad_axis_value(0,gp_axisrv) > 0.5 or gamepad_axis_value(0,gp_axisrv) < -0.5
{
    angle = pointdir;
}
