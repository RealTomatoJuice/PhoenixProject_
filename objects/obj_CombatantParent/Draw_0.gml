
var _tgtPan = instance_place(mouse_x,mouse_y,obj_PanelArray)
if(_tgtPan!=undefined){
	draw_text(mouse_x,mouse_y-16,global.targetPanel.xCord)
	draw_text(mouse_x,mouse_y,global.targetPanel.yCord)
}

if(obj_BattleController.loadComplete==true){
	if(global.activeCombatant==id){
		draw_sprite_ext(spr_CombatantPlaceholder,image_index,x,y,1,1,0,c_green,1)
	}
	else{
		draw_self()
		draw_set_alpha(0.7)
		draw_rectangle_colour(x-12,y-42,x-12+((hp/hpMax)*60),y-36,c_red,c_red,c_yellow,c_yellow,false)
	}
}
draw_set_alpha(1)

switch(actionState){
	case("gun"):
		draw_line_colour(x+16,y-16,global.targetPanel.pId.x+16,global.targetPanel.pId.y,c_red,c_red)
		if(gun!=undefined){
			draw_text(x-16,y-32,"Ammo: "+string(gun.ammo)+"/"+string(gun.maxAmmo))
		}
}