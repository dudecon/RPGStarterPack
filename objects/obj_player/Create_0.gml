// comment

randomise();

move_speed = 1;
tilemap = layer_tilemap_get_id("Tiles_col");

sprite_index = choose(spr_player_walk_down, spr_player_walk_up, spr_player_walk_right, spr_player_walk_left, spr_box);
audio_play_sound(RPG_Soundtrack, 1, true, 0.05, random(142));