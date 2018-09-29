for (var i = 0; i < 8; i++;) {
var xx = 32;
var yy = 32 + (140 * i);
if gamepad_is_connected(i) {
    draw_text(xx, yy, "Gamepad Slot - " + string(i));
    draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(i)));
    draw_text(xx, yy + 40, "Left H Axis - " + string(gamepad_axis_value(i, gp_axislh)));
    draw_text(xx, yy + 60, "Left V Axis - " + string(gamepad_axis_value(i, gp_axislv)));
    draw_text(xx, yy + 80, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrh)));
    draw_text(xx, yy + 100, "Right V Axis - " + string(gamepad_axis_value(i, gp_axisrv))); 
    draw_text(xx, yy + 120, "Angle - " + string(angle));  
    draw_text(xx + 250, yy + 40, "R1 - " + string(gamepad_button_value(i, gp_shoulderr)));
    draw_text(xx + 250, yy + 60, "R2 - " + string(gamepad_button_value(i, gp_shoulderrb)));
    draw_text(xx + 250, yy + 80, "L1 - " + string(gamepad_button_value(i, gp_shoulderl)));
    draw_text(xx + 250, yy + 100, "L2 - " + string(gamepad_button_value(i, gp_shoulderlb)));
    }
else {
    draw_text(xx, yy, "Gamepad Slot - " + string(i));
    draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
    }
}
