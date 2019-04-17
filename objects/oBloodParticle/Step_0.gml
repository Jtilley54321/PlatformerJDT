vsp += grv;
if(abs(vsp) > maxvsp){
	vsp = sign(vsp) * maxvsp;	
}
y += vsp;

hsp -= deceleration * sign(hsp);
if(abs(hsp) < deceleration){
	hsp = 0;
}
x += hsp;