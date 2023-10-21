extends Control

var jump_high = -50
var jump_min = 0
var jump_max = -40
var ground_position = 230
var in_the_middle_of_the_jump: bool = false

var speed_jump_top = 0.1#0.2
var speed_jump_down = 0.05#0.1


var tween: Tween


func _input(event):
	jump()

func jump():
	if Input.is_action_just_pressed("Space") and in_the_middle_of_the_jump == false:
		rand_jump_high()
		in_the_middle_of_the_jump = true
		if tween:
			tween.kill()
		tween = create_tween()
		tween.tween_property($TextureRect, "position", Vector2(430,jump_high), speed_jump_top).set_trans(Tween.TRANS_CIRC)#
		tween.finished.connect(Callable(self,"jump_back"))

func jump_back():
	actualization_progress()
	if tween:
			tween.kill()
	tween = create_tween()
	tween.tween_property($TextureRect, "position", Vector2(430,ground_position), speed_jump_down).set_trans(Tween.TRANS_BACK)#Tween.TRANS_SINE
	tween.finished.connect(Callable(self,"end_jump"))
	
func end_jump():
	in_the_middle_of_the_jump = false

func actualization_progress():
	get_parent().counter += 1
	get_parent().step_in_actual_level()

func rand_jump_high():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	jump_high = rng.randi_range(jump_min,jump_max)
