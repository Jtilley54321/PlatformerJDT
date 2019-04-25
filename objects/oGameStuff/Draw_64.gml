if (room != rMenu) {
	// THE FUCKING DEATHS
	draw_set_font(fHUD);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(1010, 16, "Deaths: " + string(global.deaths));
	draw_set_halign(fa_left);
	
	// THE PLAYERS FUCKING LIVES
	draw_set_font(fHUD);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_sprite(sPlayer, 0, 18, 25);
	draw_set_color(c_white);
	draw_text(70, 25, "X " + string(oPlayer.CloneLives));
}