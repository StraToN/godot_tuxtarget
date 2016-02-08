
extends MeshInstance

export(int) var targetPoints setget targetPoints_set,targetPoints_get

func _fixed_process(delta):
	pass

func _ready():
	set_fixed_process(true)
	create_trimesh_collision()



func targetPoints_set(v):
	targetPoints = v 
	
func targetPoints_get():
	return targetPoints