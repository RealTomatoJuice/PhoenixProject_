if(mouse_check_button(mb_right)){
	global.activeCombatant.actionState = "idle"
	global.activeCombatant.deactivate = false
	instance_activate_object(ui_BattleMenu0)
	instance_activate_object(ui_BattleMenuButton0)
	instance_destroy(ui_MagicMenu0)
	instance_destroy(ui_MagicMenuButton0)
}