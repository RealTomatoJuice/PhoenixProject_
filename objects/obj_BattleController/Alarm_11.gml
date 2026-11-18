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