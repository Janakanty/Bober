extends Control

var counter: int = 0
var actual_level:int = 1
var end = false
var end_counter = 0

func _input(event):
	if Input.is_action_just_pressed("ui_end"):
		get_tree().quit()
	if Input.is_action_just_pressed("Space") and end == true:
		end_counter += 1
		end_text()
		
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

	
func end_text():
	match end_counter:
		1:
			$TextureRect/Label.text = "YOU HAD ONE JOB!"
		2:
			$TextureRect/Label.text = "WHY SO FAST?!"
		3:
			$Control.visible = true
func step_in_actual_level():
	get_node("Level"+str(actual_level)).step()
	
func end_level1():
	var tween = create_tween()
	tween.tween_property($Level1, "modulate", Color(1,1,1,0),5).set_trans(Tween.TRANS_QUART)
	tween.finished.connect(Callable(self,"bober_ded"))
	
func bober_ded():
	var tween = create_tween()
	tween.tween_property($TextureRect, "modulate", Color(1,1,1,1),5).set_trans(Tween.TRANS_QUART)
	tween.finished.connect(Callable(self,"end_game"))

func end_game():
	end = true
