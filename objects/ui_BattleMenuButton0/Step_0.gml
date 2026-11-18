switch(state){
	
	case("melee"):
		x = origin.x + 32
		y = origin.y + 16
		
		if(position_meeting(mouse_x,mouse_y,self)&&mouse_check_button_pressed(mb_left)){
			global.activeCombatant.actionState = "melee"
			show_debug_message("actionState changed")
		}
	break;
	
	case("gun"):
		x = origin.x + 96
		y = origin.y + 16
	break;
	
	case("magic"):
		x = origin.x + 160
		y = origin.y + 16
	break;
	
	case("guard"):
		x = origin.x + 224
		y = origin.y + 16
	break;
	
	case("pass"):
		x = origin.x + 288
		y = origin.y + 16
	break;
}