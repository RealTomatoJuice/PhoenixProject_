x = obj_BattleController.battleGrid[xCord,yCord].pId.x
y = obj_BattleController.battleGrid[xCord,yCord].pId.y+12
obj_BattleController.battleGrid[xCord,yCord].entity = id
obj_BattleController.battleGrid[xCord,yCord].occupied = true
depth = obj_BattleController.battleGrid[xCord,yCord].xCord * -1
if(obj_BattleController.loadComplete==true)
{	
	if(ap<=0&&global.activeCombatant!=id)
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
		//action states
		switch(actionState){
			
			case("idle"):
			
			//movement
				with(obj_GridCollider){
					inRange = false
				}
			
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
				
			break;
			
			case("melee"):
				if(ap>=meleeApCost){
					
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
					
					var _rangeCheck = PanelCheckRangeSquare(xCord-1,yCord-1,xCord+1,yCord+1,global.targetPanel)
					
					if(mouse_check_button_pressed(mb_left)&&_rangeCheck&&global.targetPanel.occupied==true){
						var _meleeTarget = global.targetPanel.entity
						show_debug_message(_meleeTarget)
						_meleeTarget.hp -= round(40 + str*2)
						actionState = "idle"
						ap -= meleeApCost
						deactivate = false
						sp+=(15 * ((spi*10)/200))
						audio_play_sound(Sound3,1,false)
						if(sp>spMax){
							sp = spMax
						}
						instance_activate_object(ui_BattleMenu0)
						instance_activate_object(ui_BattleMenuButton0)
						}
					}
				else{
					deactivate = false
					actionState = "idle"
				}
			break;
			
			case("gun"):
				if(gun!=undefined){
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
					
					
					var _rangeCheck = PanelCheckRangeSquare(xCord-gun.range,yCord-gun.range,xCord+gun.range,yCord+gun.range,global.targetPanel)
					
					
					if(mouse_check_button_pressed(mb_left)&&_rangeCheck&&global.targetPanel.occupied==true){
						var _target = global.targetPanel.entity
						show_debug_message(_target)
						_target.hp -= gun.damage
						gun.ammo -= 1
						deactivate = false
						ap += gun.ap
						audio_play_sound(Sound2,1,false)
						if(ap>apMax){
							ap = apMax
						}
						if(gun.ammo <= 0){
							actionState = "idle"
							gun = undefined
						}
						instance_activate_object(ui_BattleMenu0)
						instance_activate_object(ui_BattleMenuButton0)
						}
				}
			else{
					deactivate = false
					actionState = "idle"
				}
			break;
			
			case("magic"):
				if(deactivate == false){
						instance_deactivate_object(ui_BattleMenuButton0)
						instance_deactivate_object(ui_BattleMenu0)
						deactivate = true
						instance_create_depth(ui_BattleMenu0.x,ui_BattleMenu0.y,ui_BattleMenu0.depth,ui_MagicMenu0)
				}
				if(mouse_check_button(mb_right)){
						actionState = "idle"
						deactivate = false
						instance_activate_object(ui_BattleMenu0)
						instance_activate_object(ui_BattleMenuButton0)
						instance_destroy(ui_MagicMenu0)
						instance_destroy(ui_MagicMenuButton0)
					}
					
				
				
				
			break;
		}
		
		
	}
}