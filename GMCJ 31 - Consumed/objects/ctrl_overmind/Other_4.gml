show_debug_message(room_get_name(room));
room_ingame = false;

// ---------
// INIT ROOM
// ---------
if (room == rm_init) {
    gamestate_set("player_feed", 1000);
    navigation_set(rm_start, "lonely_hole", 64, 0);
    navigation_do();
}
// ------------
// INGAME ROOMS
// ------------
else {
    room_ingame = true;
    var _spawn_point = gamestate_get("spawn_point");
    var _xoffset = gamestate_get("spawn_xoffset");
    var _yoffset = gamestate_get("spawn_yoffset");
    show_debug_message([_spawn_point, _xoffset, _yoffset]);
    
    var _spawn_id = undefined;
    with (o_spawn) {
        if (_spawn_point == link_id)
            _spawn_id = id;
    }
    if (!is_undefined(_spawn_id))
    {
        _xoffset += _spawn_id.x;
        _yoffset += _spawn_id.y;
    }

    with (instance_create_layer(_xoffset, _yoffset, "Instances", o_player)) {
        feed = gamestate_get("player_feed");
    }
    instance_create_layer(0, 0, "Controls", obj_gui);
}
// ------------
// MP GRID
// ------------

globalvar grid;

grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
mp_grid_add_instances(grid, o_block, false)
