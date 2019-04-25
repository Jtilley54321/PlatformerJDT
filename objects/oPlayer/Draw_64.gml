#region Draw Lives
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_sprite(sPlayer, 0, 18, 25);
draw_set_color(c_white);

if (CloneLives >= 0)
{
	draw_text_color(43, 8, "X " + string(CloneLives), c_aqua, c_aqua, c_aqua, c_aqua, 1);
}
else if (CloneLives < 0)
{
	draw_text(43, 8, "X " + string(0));
}
#endregion Draw Lives