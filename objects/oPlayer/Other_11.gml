/// @description the "death" script

global.deaths++;

audio_play_sound(sDead, 5, false);
scrDeath(oPlayer.x, oPlayer.y);

if (oGun.playerb = true)
{
	x = oStart.x;
	y = oStart.y;

	hsp = 0;
	vsp = 0;
}
else
{
	x = oStart.x;
	y = oStart.y;

	hsp = 0;
	vsp = 0;
	
	instance_destroy(oPlayerB);
}

event_user(0)