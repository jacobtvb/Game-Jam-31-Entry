if (gamestate_flag_get(collectible_group, collectible_flag)) {
    instance_destroy();
}

if (sprite_exists(collectible_sprite)) {
    sprite_index = collectible_sprite;
}
