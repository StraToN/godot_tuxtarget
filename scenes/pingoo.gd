
extends RigidBody

var closed setget set_closed,get_closed

func _fixed_process(delta):
	pass

func _integrate_forces(state):
	manage_input()

func manage_input():
	# Get the controls
	var openclose = Input.is_action_pressed("change")
	print(openclose)
	
func _ready():
	set_fixed_process(true)
	set_linear_velocity( Vector3(5,-5,3))
	connect("body_enter", self, "_on_RigidBody_body_enter", [])
	
# manage collisions
func _on_RigidBody_body_enter( body ):
	if (body extends StaticBody):
		if (body.get_parent().is_in_group("targets")):
			printt("DEBUG", "collision : ", self, body)
			print("Target collision points = ", body.get_parent().targetPoints_get())
	pass # replace with function body




## GETTERS / SETTERS
func set_closed(bClosed):
	closed = bClosed
	
func get_closed():
	return closed