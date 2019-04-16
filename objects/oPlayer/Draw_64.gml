#region Draw Lives
draw_sprite(sPlayer, 0, 18, 25);

if (CloneLives >= 0)
{
	draw_text(43, 8, "X " + string(CloneLives));
}
else if (CloneLives < 0)
{
	draw_text(43, 8, "X " + string(0));
}
#endregion Draw Lives