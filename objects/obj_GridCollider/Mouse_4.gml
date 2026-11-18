show_debug_message(xCord)
show_debug_message(yCord)
show_debug_message(string(panelState))

if(entity!=undefined){
show_debug_message(entity.str)
show_debug_message(entity.vig)
show_debug_message(entity.mnd)
show_debug_message(entity.spi)
show_debug_message(entity.agi)
show_debug_message(entity.lck)
}

show_debug_message("In range?" + string(PanelCheckRange(global.activeCombatant.xCord-1,global.activeCombatant.yCord-1,global.activeCombatant.xCord+1,global.activeCombatant.yCord+1,id)))