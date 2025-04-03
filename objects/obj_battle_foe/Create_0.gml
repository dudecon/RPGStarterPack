data = btl_sherpa.foe_data;
sprite_index = data.sprite_index;
pow = data.pow
hp = data.hp
hp_max = data.hp_max

animation_count = 0;

attack_animation = function (_direction)
{
	if (animation_count == 0) y += 8;
	if (animation_count == 20)
	{
		y += 13;
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