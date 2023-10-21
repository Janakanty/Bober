extends Control

@onready var bober = get_node("../Bober")

var tween_color: Tween
var tween_color_bober: Tween

func _ready():
	step()

func step():
	print(get_parent().counter)
	match get_parent().counter:
		0:
			reset()
		1:
			tween_color_change(Color(1,1,1,0.1))
			tween_color_bober_change(Color(1,1,1,0.1))
		2:
			tween_color_change(Color(1,1,1,0.2))
			tween_color_bober_change(Color(1,1,1,0.2))
		3:
			tween_color_change(Color(1,1,1,0.3))
			tween_color_bober_change(Color(1,1,1,0.3))
		4:
			tween_color_change(Color(1,1,1,0.4))
			tween_color_bober_change(Color(1,1,1,0.4))
		5:
			tween_color_change(Color(1,1,1,0.5))
			tween_color_bober_change(Color(1,1,1,0.5))
		6:
			tween_color_change(Color(1,1,1,0.6))
			tween_color_bober_change(Color(1,1,1,0.6))
		7:
			tween_color_change(Color(1,1,1,0.7))
			tween_color_bober_change(Color(1,1,1,0.7))
		8:
			tween_color_change(Color(1,1,1,0.8))
			tween_color_bober_change(Color(1,1,1,0.8))
		9:
			tween_color_change(Color(1,1,1,0.9))
			tween_color_bober_change(Color(1,1,1,0.9))
		10:
			tween_color_change(Color(1,1,1,1))
			tween_color_bober_change(Color(1,1,1,1))
			AudioManager.play_music("level1")
		11:
			pass
		12:
			pass

func tween_color_change(color):
	if tween_color:
			tween_color.kill()
	tween_color = create_tween()
	tween_color.tween_property($ColorRect, "color", Color(color), 0.2).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE

func tween_color_bober_change(color):
	if tween_color_bober:
		tween_color_bober.kill()
	tween_color_bober = create_tween()
	tween_color_bober.tween_property(bober, "modulate", Color(color), 0.2).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE


func reset():
	bober.modulate = Color(1,1,1,0)
