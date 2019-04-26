//fullscreen
if keyboard_check_pressed(vk_f11)
{	
	if (window_get_fullscreen())
	{
		window_set_fullscreen(false); 
	}
	else 
	{
	window_set_fullscreen(true);
	}
}

if room != rMenu
{
if keyboard_check_pressed(vk_escape) SlideTransition(TRANS_MODE.RESTART);
}

// Teleport the player when they press E
if (keyboard_check_pressed(ord("E")))
{
	if (oGun.playerb = true)
	{
		oPlayer.x = oPlayerB.x;
		oPlayer.y = oPlayerB.y - 1;
		oPlayer.hsp = 0;
		oPlayer.vsp = 0;
		instance_destroy(oPlayerB);
		oGun.playerb = false
		oPlayer.player = true
		audio_play_sound(sTeleport, 2, false);
	}
}

if (keyboard_check_pressed(ord("Q")))
{
	if (oGun.playerb = true)
	{
		instance_destroy(oPlayerB);
		oGun.playerb = false
	}
}
