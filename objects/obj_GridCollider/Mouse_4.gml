show_debug_message(oId.xCord)
show_debug_message(oId.yCord)
show_debug_message(string(oId.panelState))


if(oId.entity!=undefined){
show_debug_message(oId.entity.str)
show_debug_message(oId.entity.vig)
show_debug_message(oId.entity.mnd)
show_debug_message(oId.entity.spi)
show_debug_message(oId.entity.agi)
show_debug_message(oId.entity.lck)
show_debug_message(oId.entity.gun)
}

show_debug_message("In range?" + string(PanelCheckRangeSquare(global.activeCombatant.xCord-1,global.activeCombatant.yCord-1,global.activeCombatant.xCord+1,global.activeCombatant.yCord+1,oId)))