// comment

randomise();

tilemap = layer_tilemap_get_id("Tiles_col");

sprite_index = choose(spr_player_idle_down, spr_player_idle_up, spr_player_idle_right, spr_player_idle_left);

move_speed = 1;
hp = 10;
hp_max = hp;
charge = 0;
pow = 1;
disabled = false;


animation_count = 0;

attack_animation = function (_direction)
{
	if (animation_count == 0) y += 5;
	if (animation_count == 20)
	{
		y -= 20;
		_direction *= -1;
		audio_play_sound(RPG_bnap, 1, false, 0.1);
	}
	if (animation_count > 20) _direction *= -1;
	if (animation_count == 40)
	{
		y = ystart;
		x = xstart;
		animation_count = 0;
		exit;
	}
	x += _direction;
	animation_count += 1;
	alarm[1] = 1;
}