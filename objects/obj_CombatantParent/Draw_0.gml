
var _tgtPan = instance_place(mouse_x,mouse_y,obj_PanelArray)
if(_tgtPan!=undefined){
	draw_text(mouse_x,mouse_y-16,global.targetPanel.xCord)
	draw_text(mouse_x,mouse_y,global.targetPanel.yCord)
}

if(obj_BattleController.loadComplete==true){
	if(global.activeCombatant==id){
		draw_sprite_ext(spr_CombatantPlaceholder,image_index,x,y,1,1,0,c_green,1)
		draw_rectangle_colour(x-32,y-22,x-32+((hp/hpMax)*60),y-16,c_red,c_red,c_yellow,c_yellow,false)
		draw_rectangle_colour(x-32,y-30,x-32+((sp/spMax)*60),y-24,c_lime,c_lime,c_aqua,c_aqua,false)
		draw_rectangle_colour(x-32,y-38,x-32+((ap/apMax)*60),y-32,c_ltgrey,c_ltgrey,c_black,c_black,false)
	}
	else{
		draw_self()
		draw_set_alpha(0.7)
		draw_rectangle_colour(x-32,y-22,x-32+((hp/hpMax)*60),y-16,c_red,c_red,c_yellow,c_yellow,false)
	}
}
draw_set_alpha(1)