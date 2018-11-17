// note: there's a quirk regarding LEFT/RIGHT transitions
// when a player moves past a horizontal transition, they fall a bit when stepping out of it
// which then results in the player getting stuck in the ground in the next room
// to prevent that, put a block outside the room to extend the floor below such a transition
switch (side)
{
    case Direction.RIGHT:
        navigation_set(destination_room, link_id, o_player.x - bbox_right, o_player.y - y);
        break;
    case Direction.UP:
        navigation_set(destination_room, link_id, o_player.x - x, o_player.y - y + bbox_bottom - bbox_top);
        break;
    case Direction.LEFT:
        navigation_set(destination_room, link_id, o_player.x - x + bbox_right - bbox_left, o_player.y - y);
        break;
    case Direction.DOWN:
        navigation_set(destination_room, link_id, o_player.x - x, o_player.y - bbox_bottom);
        break;
}
// carry over some other relevant variables here
gamestate_set("player_feed", o_player.feed);
navigation_do();
