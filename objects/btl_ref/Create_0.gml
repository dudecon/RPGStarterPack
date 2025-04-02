phase = 0;
target = obj_battle_foe;
attacker = obj_player;
pow = 0;

process_attack = function (_damage)
{
	show_debug_message("applying damage");
	show_debug_message(_damage);
	alarm[phase] = 60;
	if phase == 1
	{ // enemie's turn
		target = btl_sherpa.player_data;
		attacker = btl_sherpa.foe_data;
	}
	else
	{ // player's turn
		attacker = btl_sherpa.player_data;
		target = btl_sherpa.foe_data;
		phase = 1;
	}
	pow = _damage;
}

apply_attack = function()
{
	target.hp -= pow * random_range(0.7,1.3);
}