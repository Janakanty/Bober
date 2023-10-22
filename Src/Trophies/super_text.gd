extends Label

var wow = preload("res://Audio/BGS/bez_nazwy.wav")
var jej = preload("res://Audio/BGS/Jeej.wav")

var tween: Tween

func rand_sound():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var sound = rng.randi_range(1,2)
	if sound == 1:
		$AudioStreamPlayer.stream = wow
	elif sound == 2:
		$AudioStreamPlayer.stream = jej

func super_text(text):
	rand_sound()
	$AudioStreamPlayer.play()
	self.text = text
	if tween:
		tween.kill()
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	global_position = Vector2(randi_range(300,1620),1080)
	tween = create_tween()
	tween.tween_property(self, "global_position", Vector2(500,300), 1.5).set_trans(Tween.TRANS_ELASTIC)#Tween.TRANS_SINE
	tween.finished.connect(Callable(self,"down"))

func down():
	if tween:
		tween.kill()
	tween = create_tween()
	tween.tween_property(self, "global_position", Vector2(500,1080), 0.3).set_trans(Tween.TRANS_CUBIC)#Tween.TRANS_SINE



