var _iteration = 0
for(var _i = 0 ; _i < 4 ; _i++){
	_iteration ++;
	for(var _r = 0 ; _r < 3 ; _r++){
		with(instance_create_depth(x-90+(100*_iteration),y+10+(16*_r),depth-1,ui_MagicMenuButton0)){
			buttonId = _iteration
		}
	}
	
}