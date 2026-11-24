if(position_meeting(mouse_x,mouse_y,self))
{
	draw_sprite_ext(spr_MagicMenuButton0,image_index,x,y,1,1,0,c_green,1);
}
else
{
	draw_self()
}


if(global.activeCombatant.spells[buttonId].name!="none"){
	draw_text(x,y,string(global.activeCombatant.spells[buttonId].name))
}
else{
	
}