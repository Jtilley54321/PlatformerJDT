/// @description Insert description here
// You can write your code in this editor
draw_sprite(sPlayer, 0, 15, 25);

if (life >= 0)
{
	draw_text(30, 8, "X" + string(life));
}
else if (life < 0)
{
	draw_text(30, 8, "X" + string(0));
}