draw_sprite_ext(sprite_index,image_index,16,view_hport-64-24,image_xscale,image_yscale,0,image_blend,image_alpha)

if (instance_exists(o_player)) {
    for (var i = 0; i < 10; i++) {
        draw_sprite(o_player.feed >= 100 * i ? s_pipFill : s_pipEmpty, 0, 16 + 32 * i, 16);
    }
}
