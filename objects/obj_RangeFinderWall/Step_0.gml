var _x1 = global.targetPanel.xCord - xrange;
var _y1 = global.targetPanel.yCord - xrange;
var _x2 = global.targetPanel.xCord + yrange;
var _y2 = global.targetPanel.yCord + yrange;
PanelCheckRangeSquare(_x1,_y1,_x2,_y2,global.targetPanel)
if(mouse_check_button_pressed(mb_left)){
	
	if(PanelCheckRangeSquare(_x1,_y1,_x2,_y2,global.targetPanel)){
		validRange = PanelIdCheckRangeSquare(_x1,_y1,_x2,_y2)
		magicFunction(validRange);
		global.activeCombatant.ap -= ap
		global.activeCombatant.sp -= sp
		if(global.activeCombatant.ap<=0){
			global.activeCombatant.ap = 0
		}
		if(global.activeCombatant.sp<=0){
			global.activeCombatant.sp = 0
		}
		global.activeCombatant.actionState = "idle"
		global.activeCombatant.deactivate = false
		instance_activate_object(ui_BattleMenuButton0)
		instance_activate_object(ui_BattleMenu0)
		instance_destroy(ui_MagicMenu0)
		instance_destroy(ui_MagicMenuButton0)
		instance_destroy(self)
		
	}
}
if(mouse_check_button(mb_right)){
	instance_activate_object(ui_MagicMenu0)
	instance_activate_object(ui_MagicMenuButton0)
	global.activeCombatant.actionState = "idle"
	global.activeCombatant.deactivate = false
	instance_destroy(self)
}