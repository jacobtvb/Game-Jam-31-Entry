var _player_collide = place_meeting(x, y, o_player);
if (player_on && !_player_collide) {
    switch (side)
    {
        case Direction.RIGHT:
            if (o_player.bbox_left >= bbox_right)
                event_user(0);
            break;
        case Direction.UP:
            if (o_player.bbox_bottom < bbox_top)
                event_user(0);
            break;
        case Direction.LEFT:
            if (o_player.bbox_right < bbox_left)
                event_user(0);
            break;
        case Direction.DOWN:
            if (o_player.bbox_top >= bbox_bottom)
                event_user(0);
            break;
    }
}

player_on = _player_collide;
