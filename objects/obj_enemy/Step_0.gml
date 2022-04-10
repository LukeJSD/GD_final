/// @description pre frame

if ((abs(x - playerObj.x) < 150) and (abs(y - playerObj.y) < 150)){
	move_towards_point( playerObj.x, playerObj.y, spd )	;
}else{
	if(	x > 1200){
		direction = 180; 
	}else if( x < 50){
		direction = 0; 
	}else if(cos(degtorad(direction)) < 0){
		direction = 180; 
	}else{
		direction = 0;	
	}
	x += spd * cos(degtorad(direction));
	
}