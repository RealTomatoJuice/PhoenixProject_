function SpellPhasmShell(_validRange){
	for(var _i = 1 ; _i < array_length(_validRange) ; _i++){
		_validRange[_i].hp -= 40*(global.activeCombatant.spi/25+1)*(global.activeCombatant.mnd/50+1)
	}
}

function SpellProtrude(_validRange){
	for(var _i = 1 ; _i < array_length(_validRange) ; _i++){
		_validRange[_i].panelState = "wall" 
		_validRange[_i].occupied = true
	}
}