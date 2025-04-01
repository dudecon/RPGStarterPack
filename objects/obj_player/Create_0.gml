// comment

randomise();

tilemap = layer_tilemap_get_id("Tiles_col");

sprite_index = choose(spr_player_walk_down, spr_player_walk_up, spr_player_walk_right, spr_player_walk_left, spr_box);

move_speed = 1;
hp = 10;
hp_max = hp;
charge = 0;
pow = 1;
