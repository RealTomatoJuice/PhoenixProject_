var _gridWidth = 16
var _gridHeight = 16
turnOrder = array_create(0)
global.turnCount = 0
combatCamera = camera_create_view(0,0,640,320)
room_set_camera(rm_BattleZone,0,combatCamera)
view_set_camera(0,combatCamera)
view_set_visible(0,true)
window_center()
window_set_fullscreen(1)
view_set_wport(0, 1920);
view_set_hport(0, 1080);
camera_set_view_speed(combatCamera,5,5)
camera_set_view_border(combatCamera,320,160)



for(var _w = 0 ; _w < _gridWidth ; _w++){
	for(var _h = 0 ; _h < _gridHeight ; _h++){
		//init array
		if(_w==0||_w==_gridWidth-1||_h==0||_h==_gridHeight-1){
			var _gridCall = {
				entity : undefined,
				panelState : "wall",
				xCord : _w,
				yCord : _h,
			}
			var _gridRef = instance_create_depth(x+(32*_w),y+(32*_h),1,obj_GridCollider,_gridCall)
			battleGrid[_w,_h] = _gridRef
		}
		else{
			var _gridCall = {
				entity : undefined,
				panelState : "default",
				xCord : _w,
				yCord : _h,
			}
			var _gridRef = instance_create_depth(x+(32*_w),y+(32*_h),1,obj_GridCollider,_gridCall)
			battleGrid[_w,_h] = _gridRef
		}
	}
}

alarm[11] = 10



