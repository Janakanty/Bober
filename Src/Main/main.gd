extends Control

var counter: int = 0
var actual_level:int = 1

func _input(event):
	if Input.is_action_just_pressed("ui_end"):
		get_tree().quit()

func step_in_actual_level():
	get_node("Level"+str(actual_level)).step()
	
