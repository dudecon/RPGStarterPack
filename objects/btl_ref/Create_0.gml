phase = 0;
btl_attacker = obj_player;
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
		btl_attacker = obj_battle_foe;
		if (obj_player.charge >= 1)
		{
			act_atkH.disabled = false;
		}
	}
	else
	{ // player's turn
		attacker = btl_sherpa.player_data;
		target = btl_sherpa.foe_data;
		btl_attacker = obj_player;
		phase = 1;
		
	}
	pow = _damage;
	//trigger the attack animation
	btl_attacker.alarm[1] = 1;
}

apply_attack = function()
{
	target.hp -= pow * random_range(0.7,1.3);
	if ( check_battle_end() ) 
	{
		alarm[2] = 40;
		return true;
	}
	else return false;
}

check_battle_end = function()
{
	return ( target.hp <= 0 );
}