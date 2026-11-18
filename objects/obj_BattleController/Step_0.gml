if(loadComplete==true)
{	 
	 global.activeCombatant = turnOrder[global.turnCount].instance
	 
	 camera_set_view_target(combatCamera,global.activeCombatant)
	 
}