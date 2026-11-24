var _turnSort = function(_current,_next){
	//sort turn order functionw
	return sign(_next.agi - _current.agi);
}

for(var _iN = 0 ; _iN < instance_number(obj_CombatantParent) ; _iN++){
	var _instanceRef = instance_find(obj_CombatantParent,_iN);
	turnOrder[_iN] = {
		instance : _instanceRef, 
		agi : _instanceRef.agi
	}
}
array_sort(turnOrder,_turnSort)
loadComplete = true;
turnOrder[global.turnCount].instance.ap = turnOrder[global.turnCount].instance.apMax;
instance_create_layer(0,0,"Instances",ui_BattleMenu0)

show_debug_message(turnOrder)

//random generate equip gun test
for(var _i = 0 ; _i < instance_number(obj_CombatantParent) ; _i++)
{
	var _assignId = instance_find(obj_CombatantParent,_i)
	_assignId.spells[0] = init_spells.spellArray[0]
	_assignId.spells[1] = init_spells.spellArray[1]
	instance_find(obj_CombatantParent,_i).gun = init_equipment.equipmentArray[irandom_range(0,6)]
	instance_find(obj_CombatantParent,_i).gun.ammo = irandom_range(round(instance_find(obj_CombatantParent,_i).gun.maxAmmo*0.3),instance_find(obj_CombatantParent,_i).gun.maxAmmo)
}



//camera and room settings
combatCamera = camera_create_view(0,0,room_width/2,room_height/2)
room_set_camera(rm_BattleZone,0,combatCamera)
view_set_camera(0,combatCamera)
view_set_visible(0,true)
window_center()
view_set_wport(0, 1920);
view_set_hport(0, 1080);
camera_set_view_speed(combatCamera,10,10)
camera_set_view_border(combatCamera,320,160)