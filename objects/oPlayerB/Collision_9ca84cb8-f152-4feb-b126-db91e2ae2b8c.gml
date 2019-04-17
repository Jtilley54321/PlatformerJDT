/// @description Insert description here
// You can write your code in this editor
global.deaths++;

audio_play_sound(sDead, 5, false);
scrDeath(oPlayerB.x, oPlayerB.y);

oPlayer.CloneLives++;

instance_destroy();
oGun.playerb = false;