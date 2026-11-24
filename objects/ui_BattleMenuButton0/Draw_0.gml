image_index = frame+1
switch(state){
	
	case("melee"):
		if(position_meeting(mouse_x,mouse_y,self)){
			draw_sprite_ext(spr_BattleMenuButton0,image_index,x,y,1,1,0,c_green,1);
			if(global.activeCombatant.ap<global.activeCombatant.meleeApCost){
				draw_sprite_ext(spr_BattleMenuButton0,image_index,x,y,1,1,0,c_red,1)
			}
		}
		else{
			draw_self()
		}
	break;
	
	case("gun"):
		if(position_meeting(mouse_x,mouse_y,self)){
			draw_sprite_ext(spr_BattleMenuButton0,image_index,x,y,1,1,0,c_green,1);
			if(global.activeCombatant.gun==undefined){
				draw_sprite_ext(spr_BattleMenuButton0,image_index,x,y,1,1,0,c_red,1)
			}
		}
		else{
			draw_self()
		}
	break;
	
	case("magic"):
		if(position_meeting(mouse_x,mouse_y,self)){
			draw_sprite_ext(spr_BattleMenuButton0,image_index,x,y,1,1,0,c_green,1);
		}
		else{
			draw_self()
		}
	break;
	
	default:
		draw_self()
	break;
}
