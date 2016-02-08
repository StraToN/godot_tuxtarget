
extends Camera

export(NodePath) var target

func _ready():
	set_process(true)
	
func _process(delta):
	var up = Vector3(0,1,0)
	var pos = get_global_transform().origin
	
	#var t = self.get_transform().looking_at( get_parent().get_node("RigidBody").get_global_transform().origin, up)
	var t = self.get_transform().looking_at( get_node(target).get_global_transform().origin, up)
	set_transform(t)
	