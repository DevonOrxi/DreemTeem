// For each player...
var p = 0;
global.playerConnected = 0;

while (p < global.playerAmount) {
    if playerJoy[p] == -1 {
        var found = false;
        var joy_players = 0;
        var joy_index = 0;
        var joy_counter = 0;
        
        while (!found && joy_index < 8) {
            var assigned = false;
            
            if (gamepad_is_connected(joy_index)) {
                
                while (!assigned && joy_players < global.playerAmount) {
                    if (joy_players != p && joy_index == playerJoy[joy_players])
                        assigned = true;
                        
                    joy_players++;
                }
                
                if !assigned {
                    playerJoy[p] = joy_index;
                    global.playerConnected++;
                    found = true;
                }
            }
            joy_index++;
        }
        p++;
    } else {
        if !gamepad_is_connected(playerJoy[p]) {
            playerJoy[p] = -1;
        } else {
            p++;
            global.playerConnected++;
        }
    }
}
