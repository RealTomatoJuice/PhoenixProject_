if(spellData.name!="none"){
	if(position_meeting(mouse_x,mouse_y,self)&&(global.activeCombatant.ap>=spellData.ap))
	{
		draw_sprite_ext(spr_MagicMenuButton0,image_index,x,y,1,1,0,c_green,1);
	}
	else if(position_meeting(mouse_x,mouse_y,self)&&(global.activeCombatant.ap<spellData.ap)){
		draw_sprite_ext(spr_MagicMenuButton0,image_index,x,y,1,1,0,c_red,1);	
	}
	else
	{
		draw_self()
	}
	draw_text(x,y,string(global.activeCombatant.spells[buttonId].name))
}
else{
	draw_set_alpha(0.7)
	draw_self()
}