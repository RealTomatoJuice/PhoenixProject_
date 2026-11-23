var _projectX = (xCord + (xCord - yCord) * 32/2)+360;
var _projectY = (yCord + (xCord + yCord) * round(36/4))+120;

with(instance_create_layer(_projectX,_projectY,"Instances_1",obj_GridCollider)){
	other.pId = id
	oId = other.id
}
