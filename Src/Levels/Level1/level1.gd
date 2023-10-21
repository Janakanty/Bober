extends Control

var bober_normal = preload("res://Graphics/Bober/bober_cute.png")
var bober_germam = preload("res://Graphics/Bober/CowBoy.png")

@onready var main = get_parent()
@onready var bober = get_node("../Bober")
@onready var Counter = $Counter
@onready var TopCenterText = $TopCenterText
#var track = AudioManager.get_audio_track("level1")


var tween_color: Tween
var tween_color_bober: Tween
var tween_color_top_center_text: Tween
var tween_counter_text: Tween

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
			$Counter.visible = true
		2:
			tween_color_change(Color(1,1,1,0.2))
			tween_color_bober_change(Color(1,1,1,0.2))
			AudioManager.play_music("start_level1")
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

		11:
			tween_counter_color_change(Color(0.3,0.3,0.3,1))
			$TopCenterText.visible = true
		12:
			pass
		13:
			pass
		14:
			pass
		15:
			pass
		16:
			pass
		17:
			pass
		18:
			pass
		19:
			tween_color_top_center(Color(0,0,0,0), 2)
		20:
			pass
		21:
			pass
		22:
			pass
		23:
			tween_color_top_center_text.kill()
			TopCenterText.text = "Meet the beaver"
			TopCenterText.modulate = Color(0.3,0.3,0.3,1)
			
		24:
			pass
		25:
			pass
		26:
			pass
		27:
			TopCenterText.text = "Its him"
		28:
			pass
		29:
			pass
		30:
			pass
		31:
			pass
		32:
			TopCenterText.text = "He likes you"
		33:
			bober.get_node("TextureRect").texture = bober_germam
		34:
			pass
		35:
			bober.get_node("TextureRect").texture = bober_normal
		36:
			pass
		37:
			pass
		38:
			pass
		39:
			TopCenterText.text = ""
		40:
			AudioManager.stop_music(true, 3)
		41:
			pass
		42:
			pass
		43:
			AudioManager.play_music("level1")
			TopCenterText.text = "Beaver goes to his dream job"
			$Flowers/flower1.visible = true
		44:
			$Flowers/flower2.visible = true
		45:
			$Flowers/flower3.visible = true
			$Flowers/flower4.visible = true
		46:
			$Flowers/flower5.visible = true
		47:
			$Flowers/flower6.visible = true
			$Flowers/flower7.visible = true
		48:
			$Flowers/flower8.visible = true
			AudioManager.mute_layer("level1", ["kick"], false, 0.5)
			AudioManager.mute_layer("level1", ["melody"], false, 0.5)
		49:
			pass
		50:
			pass
		51:
			pass
		52:
			pass
		53:
			pass
		54:
			pass
		55:
			pass
		56:
			pass
		57:
			pass
		58:
			pass
		59:
			pass
		60:
			pass
		61:
			pass
		62:
			pass
		63:
			pass
		64:
			pass
		65:
			pass
		66:
			pass
		67:
			pass
		68:
			pass
		69:
			pass
		70:
			pass
		71:
			pass
		72:
			pass
		73:
			pass
		74:
			pass
		75:
			pass
		76:
			pass
		77:
			pass
		78:
			pass
		79:
			pass
		80:
			pass
		81:
			pass
		82:
			pass
		83:
			pass
		84:
			pass
		85:
			pass
		86:
			pass
		87:
			pass
		88:
			pass
		89:
			pass
		90:
			pass
		91:
			pass
		92:
			pass
		93:
			pass
		94:
			pass
		95:
			pass
		96:
			pass
		97:
			pass
		98:
			pass
		99:
			pass
		100:
			pass
	counter_actualization()
		
	
func counter_actualization():
	$Counter.text = str(main.counter)
	
func tween_color_change(color, time = 0.2):
	if tween_color:
			tween_color.kill()
	tween_color = create_tween()
	tween_color.tween_property($ColorRect, "color", Color(color), time).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE

func tween_color_bober_change(color, time = 0.2):
	if tween_color_bober:
		tween_color_bober.kill()
	tween_color_bober = create_tween()
	tween_color_bober.tween_property(bober, "modulate", Color(color), time).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE

func tween_counter_color_change(color,time = 0.2):
	if tween_counter_text:
			tween_counter_text.kill()
	tween_counter_text = create_tween()
	tween_counter_text.tween_property($Counter, "modulate", Color(color), time).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE

func tween_color_top_center(color, time = 0.2):
	if tween_color_top_center_text:
			tween_color_top_center_text.kill()
	tween_color_top_center_text = create_tween()
	tween_color_top_center_text.tween_property($TopCenterText, "modulate", Color(color), time).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE

func reset():
	bober.modulate = Color(1,1,1,0)
	$Counter.visible = false
	$TopCenterText.visible = false 
	$TopCenterText.modulate = Color(0,0,0,1)
#BLO
