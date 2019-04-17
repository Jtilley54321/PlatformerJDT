#region Draw Lives

draw_sprite(sPlayer, 0, 18, 25);
draw_set_color(c_white);

if (CloneLives >= 0)
{
	draw_text(43, 8, "X " + string(CloneLives));
}
else if (CloneLives < 0)
{
	draw_text(43, 8, "X " + string(0));
}
#endregion Draw Lives