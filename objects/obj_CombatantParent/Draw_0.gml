draw_text(x-32,y-32,ap)
draw_text(x-32,y-48,hp)
draw_text(x-32,y-64,sp)
draw_text(x-32,y-16,critChance)
var _tgtPan = instance_place(mouse_x,mouse_y,obj_GridCollider)

if(obj_BattleController.loadComplete==true){
	if(global.activeCombatant==id){
		draw_sprite_ext(spr_CombatantPlaceholder,image_index,x,y,1,1,0,c_green,1)
	}
	else{
		draw_self()
	}

}