/// @description Insert description here
// You can write your code in this editor
draw_sprite(sPlayer, 0, 18, 25);

if (life >= 0)
{
	draw_text(43, 8, "X " + string(life));
}
else if (life < 0)
{
	draw_text(43, 8, "X " + string(0));
}