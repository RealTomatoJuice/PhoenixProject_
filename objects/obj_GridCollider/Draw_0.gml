
if(position_meeting(mouse_x,mouse_y,self)){
	draw_sprite_ext(spr_OrchardIsoTile0,image_index,x,y,1,1,0,c_green,1)
	global.targetPanel = oId
}

else if(oId.entity!=undefined){
	draw_sprite_ext(spr_OrchardIsoTile0,image_index,x,y,1,1,0,c_red,1)
}

else{
	draw_self()
}

if(inRange=true){
	draw_sprite_ext(spr_OrchardIsoTile0,image_index,x,y,1,1,0,c_fuchsia,1)
}