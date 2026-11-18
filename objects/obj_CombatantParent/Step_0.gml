x = obj_BattleController.battleGrid[xCord,yCord].x
y = obj_BattleController.battleGrid[xCord,yCord].y
obj_BattleController.battleGrid[xCord,yCord].entity = id
obj_BattleController.battleGrid[xCord,yCord].occupied = true
if(obj_BattleController.loadComplete==true)
{	
	if(ap==0&&global.activeCombatant!=id)
	{
		ap = apMax
	}
	if(ap<=0&&global.activeCombatant==id){
		if(global.turnCount>=array_length(obj_BattleController.turnOrder)-1)
		{
			global.turnCount = 0
		}
		else
		{
			global.turnCount ++
		}
	}
	
	if(global.activeCombatant == id)
	{
		
		//movement
		if(keyboard_check_pressed(ord(up))&&PanelCheckOccupied(id,0,-1)==false)
		{
			obj_BattleController.battleGrid[xCord,yCord].occupied = false
			obj_BattleController.battleGrid[xCord,yCord].entity = undefined
			yCord --
			ap --
			obj_BattleController.battleGrid[xCord,yCord].occupied = true
			obj_BattleController.battleGrid[xCord,yCord].entity = id
		}
		if(keyboard_check_pressed(ord(down))&&PanelCheckOccupied(id,0,+1)==false)
		{
			obj_BattleController.battleGrid[xCord,yCord].occupied = false
			obj_BattleController.battleGrid[xCord,yCord].entity = undefined
			yCord ++
			ap --
			obj_BattleController.battleGrid[xCord,yCord].occupied = true
			obj_BattleController.battleGrid[xCord,yCord].entity = id
		}
		if(keyboard_check_pressed(ord(left))&&PanelCheckOccupied(id,-1,0)==false)
		{
			obj_BattleController.battleGrid[xCord,yCord].occupied = false
			obj_BattleController.battleGrid[xCord,yCord].entity = undefined
			xCord --
			ap --
			obj_BattleController.battleGrid[xCord,yCord].occupied = true
			obj_BattleController.battleGrid[xCord,yCord].entity = id
		}
		if(keyboard_check_pressed(ord(right))&&PanelCheckOccupied(id,+1,0)==false)
		{
			obj_BattleController.battleGrid[xCord,yCord].occupied = false
			obj_BattleController.battleGrid[xCord,yCord].entity = undefined
			xCord ++
			ap --
			obj_BattleController.battleGrid[xCord,yCord].occupied = true
			obj_BattleController.battleGrid[xCord,yCord].entity = id
		}
		//
		
		//action states
		switch(actionState){
			
			case("idle"):
			
			break;
			
			case("melee"):
				if(ap>=meleeApCost){
					var _tgtPan = instance_place(mouse_x,mouse_y,obj_GridCollider)
					if(deactivate == false){
						instance_deactivate_object(ui_BattleMenuButton0)
						instance_deactivate_object(ui_BattleMenu0)
						deactivate = true
					}
					if(mouse_check_button(mb_right)){
						actionState = "idle"
						deactivate = false
						instance_activate_object(ui_BattleMenu0)
						instance_activate_object(ui_BattleMenuButton0)
					}
					if(mouse_check_button_pressed(mb_left)&&PanelCheckRange(xCord-1,yCord-1,xCord+1,yCord+1,_tgtPan)&&_tgtPan.occupied==true){
						show_debug_message(_tgtPan)
						var _meleeTarget = _tgtPan.entity
						show_debug_message(_meleeTarget)
						_meleeTarget.hp -= 40 + str*2
						actionState = "idle"
						ap -= meleeApCost
						deactivate = false
						instance_activate_object(ui_BattleMenu0)
						instance_activate_object(ui_BattleMenuButton0)
						}
					}
			break;
		}
		
		
	}
}