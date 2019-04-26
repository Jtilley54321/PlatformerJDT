/// @description the "death" script

global.deaths++;

audio_play_sound(sDead, 5, false);
scrDeath(oPlayer.x, oPlayer.y, false);



x = oStart.x;
y = oStart.y;

hsp = 0;
vsp = 0;

if(!instance_number(oPlayerB) > 0)
	event_user(0)