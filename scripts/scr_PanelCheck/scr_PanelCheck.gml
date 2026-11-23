function PanelCheckOccupied(_inst,_xMod,_yMod){

	var _xcord = _inst.xCord + _xMod
	var _ycord = _inst.yCord + _yMod

	return obj_BattleController.battleGrid[_xcord,_ycord].occupied

}	


function PanelCheckRangeSquare(_x1,_y1,_x2,_y2,_checkedId){
		
		var _validRange[]
		//x and y vars are INCLUSIVE here
		var _iteration = 0
		for(var _x = _x1 ; _x < _x2+1 ; _x++){
			_iteration++
			for(var _y = _y1 ; _y < _y2+1 ; _y++){
				_iteration++
				if(_x>array_length(obj_BattleController.battleGrid)-1||_x<0||_y>array_length(obj_BattleController.battleGrid[_x])-1||_y<0)
				{
				
				}
				else
				{
					_validRange[_iteration] = obj_BattleController.battleGrid[_x,_y]
					obj_BattleController.battleGrid[_x,_y].pId.inRange = true
				}
			}
		}
		
		if(array_contains(_validRange,_checkedId)){
			show_debug_message("found!")
			return true	
		}
		else{
			show_debug_message("failed to find")
			return false
		}
}