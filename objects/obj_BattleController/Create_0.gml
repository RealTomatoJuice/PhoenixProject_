var _gridWidth = 16
var _gridHeight = 16
turnOrder = array_create(0)
global.turnCount = 0

audio_play_sound(Sound1,1,true)



for(var _w = _gridWidth ; _w >= 0 ; _w--){
	for(var _h = _gridHeight ; _h >= 0 ; _h--){
		//init array
		if(_w==0||_w==_gridWidth||_h==0||_h==_gridHeight){
			var _gridCall = {
				entity : undefined,
				panelState : "wall",
				xCord : _w,
				yCord : _h,
				visible : false,
			}
			var _gridRef = instance_create_depth(x+(8*_w),y+(8*_h),1,obj_PanelArray,_gridCall)
			battleGrid[_w,_h] = _gridRef
		}
		else{
			var _gridCall = {
				entity : undefined,
				panelState : "default",
				xCord : _w,
				yCord : _h,
			}
			var _gridRef = instance_create_depth(x+(8*_w),y+(8*_h),1,obj_PanelArray,_gridCall)
			battleGrid[_w,_h] = _gridRef
		}
		
global.targetPanel = {
	xCord : 0,
	yCord : 0,
}
		
	}
}

alarm[11] = 10



