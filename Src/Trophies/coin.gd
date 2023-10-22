extends TextureRect


var color_tween: Tween
var position_tween: Tween

func start_coin(time = 0.1):
	$AudioStreamPlayer.play()
	visible = true
	tween_position(0.3)



func tween_position( time = 0.1):
	if position_tween:
		position_tween.kill()
	position_tween = create_tween()
	position_tween.tween_property(self,"position",Vector2(position.x,position.y - 40),time).set_trans(Tween.TRANS_ELASTIC)
	position_tween.finished.connect(Callable(self,"back_position"))

func back_position( time = 0.2):
	position_tween = create_tween()
	position_tween.tween_property(self,"position",Vector2(position.x,252),time).set_trans(Tween.TRANS_EXPO)
	position_tween.finished.connect(Callable(self,"unvisible"))
	
func unvisible():
	visible = false
	
	
