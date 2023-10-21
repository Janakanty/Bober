extends Control

var jump_high = -50
var ground_position = 80
var in_the_middle_of_the_jump: bool = false


var tween: Tween

	
func _input(event):
	jump()

func jump():
	if Input.is_action_just_pressed("Space") and in_the_middle_of_the_jump == false:
		in_the_middle_of_the_jump = true
		if tween:
			tween.kill()
		tween = create_tween()
		tween.tween_property($TextureRect, "position", Vector2(250,jump_high), 0.2).set_trans(Tween.TRANS_CIRC)#
		tween.finished.connect(Callable(self,"jump_back"))

func jump_back():
	actualization_progress()
	if tween:
			tween.kill()
	tween = create_tween()
	tween.tween_property($TextureRect, "position", Vector2(250,ground_position), 0.1).set_trans(Tween.TRANS_BACK)#Tween.TRANS_SINE
	tween.finished.connect(Callable(self,"end_jump"))
	
func end_jump():
	in_the_middle_of_the_jump = false

func actualization_progress():
	get_parent().counter += 1
	get_parent().step_in_actual_level()