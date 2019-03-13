x += hsp1;
if(place_meeting(x + hsp1, y, oWall)){
	hsp1 = 0;
}


if(place_meeting(x, y + vsp1, oWall)){
	vsp1 = 0;
	hsp1 -= sign(hsp1) * slowdownspeed; 
}else{
	vsp1 += grv1;	
}
y += vsp1;