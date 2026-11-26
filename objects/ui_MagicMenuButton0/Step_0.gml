if(spellData.name!="none"){
	if(position_meeting(mouse_x,mouse_y,self)&&mouse_check_button_pressed(mb_left)&&(global.activeCombatant.ap>=spellData.ap))
	{
		if(spellData.useRangeFinder==true){
			instance_create_layer(x,y,"Instances",obj_RangeFinder,spellData)
		}
		if(spellData.useRangeFinderWall==true){
			instance_create_layer(x,y,"Instances",obj_RangeFinderWall,spellData)
		}

		instance_deactivate_object(ui_MagicMenu0)
		instance_deactivate_object(ui_MagicMenuButton0)
		instance_deactivate_object(ui_BattleMenu0)
		instance_deactivate_object(ui_BattleMenuButton0)
	}
}