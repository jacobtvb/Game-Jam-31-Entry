/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,image_index,16,room_height-64-24,image_xscale,image_yscale,0,image_blend,image_alpha)

if (instance_exists(o_player)) {
    for (var i = 0; i < 5; i++) {
        draw_sprite(
            o_player.feed >= 200 * i ? s_pipFilled : s_pipEmpty,
            0,
            96 + 40 * i,
            room_height - 64);
    }
}
