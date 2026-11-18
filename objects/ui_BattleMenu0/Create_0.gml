var _stateArray[]
_stateArray[0] = "melee"
_stateArray[1] = "gun"
_stateArray[2] = "magic"
_stateArray[3] = "guard"
_stateArray[4] = "pass"
depth = 0

for(var _i = 0 ; _i < 5 ; _i++){
	
	with(instance_create_depth(x+32+(32*_i),y+16,-1,ui_BattleMenuButton0)){
		origin = other.id
		state = _stateArray[_i]
		frame = _i
	}
	
}

combatCamera = camera_get_active()