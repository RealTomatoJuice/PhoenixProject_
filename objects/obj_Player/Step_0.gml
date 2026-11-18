var _diagonalSpeed = spd*0.707
sprint = false

if(global.state = 0){
	
	camera_set_view_pos(global.overworldCamera,x-256,y-144);
	camera_set_view_size(global.overworldCamera,512,288);
	view_set_camera(0,global.overworldCamera)
	
	if(keyboard_check(vk_shift)){
		sprint = true
	}

	ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))
	hor = keyboard_check(ord("D")) - keyboard_check(ord("A")) // returns -1 0 1
	
	if(ver != 0 and hor != 0){
		
		hsp = hor * _diagonalSpeed
		vsp = ver * _diagonalSpeed
	
	}
	else{
		
		hsp = spd * hor
		vsp = spd * ver
	
	}
	
	if(sprint == true){
		move_and_collide(hsp*2.3,vsp*2.3,obj_wall) 
	
	}
	else{
		move_and_collide(hsp,vsp,obj_wall) 
	}
	
}
else{}