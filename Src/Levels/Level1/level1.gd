extends Control

var bober_normal = preload("res://Graphics/Bober/bober_cute.png")
var bober_germam = preload("res://Graphics/Bober/CowBoy.png")
var bober_pirat = preload("res://Graphics/Bober/Beaver_Pirate.png")

var BG_normal = preload("res://Graphics/Level1/Background.png")
var BG_beach = preload("res://Graphics/Level1/Background1.png")

var effect_star = preload("res://Src/Trophies/Star.tscn")
var effect_money = preload("res://Src/Trophies/Money.tscn")
var effect_super_text = preload("res://Src/Trophies/super_text.tscn")

@onready var main = get_parent()
@onready var bober = get_node("../Bober")
@onready var Counter = $Counter
@onready var TopCenterText = $TopCenterText
#var track = AudioManager.get_audio_track("level1")


var tween_color: Tween
var tween_color_bober: Tween
var tween_color_top_center_text: Tween
var tween_counter_text: Tween
var tween_background_forest: Tween

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
			$CenterText.visible = false
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
			$Effects/Coin.start_coin()
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
			$Effects/Coin.start_coin()
			bober.speed_jump_top = 0.2
		31:
			pass
		32:
			TopCenterText.text = "He likes you"
			super_text("Awesome!")
			star()
		33:
			star()
		34:
			pass
		35:
			bober.get_node("TextureRect").texture = bober_germam
		36:
			pass
		37:
			bober.get_node("TextureRect").texture = bober_normal
		38:
			pass
		39:
			TopCenterText.text = ""
		40:
			AudioManager.stop_music(true, 3)
			$Effects/Coin.start_coin()
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
			$Flowers/flower9.visible = true
			AudioManager.mute_layer("level1", ["kick"], false, 0.5)
			AudioManager.mute_layer("level1", ["melody"], false, 0.5)
		49:
			$Flowers/flower10.visible = true
			$Flowers/flower11.visible = true
			tween_background_forest_change(Color(1,1,1,0.3))
		50:
			tween_background_forest_change(Color(1,1,1,0.5))
			$Effects/Coin.start_coin()
		51:
			tween_background_forest_change(Color(1,1,1,0.8))
			$Effects/Cloud.emitting = true
			$Effects/Cloud2.emitting = true
			star()
			star()
			star()
			star()
			star()
			star()
		52:
			super_text("You are awesome!")
		53:
			pass
		54:
			pass
		55:
			TopCenterText.text = ""
		56:
			pass
		57:
			pass
		58:
			super_text("EXTRA JUMP!")
		59:
			pass
		60:
			$Effects/Coin.start_coin()
		61:
			TopCenterText.text = "To jump or not to jump?"
		62:
			super_text("ITS POSSIBLE?!")
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
			TopCenterText.text = "JOKE?"
		69:
			pass
		70:
			$Effects/Coin.start_coin()
			star()
			star()
			star()
			
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
			$Effects/Coin.start_coin()
		81:
			pass
		82:
			pass
		83:
			pass
		84:
			pass
		85:
			#pirate
			$Ground.texture = BG_beach
			AudioManager.stop_all()
			AudioManager.play_music("fale")
			bober.get_node("TextureRect").texture = bober_pirat
			
		86:
			$Pirate/shel.visible = true
			$Pirate/shel2.visible = true
			$Effects/Coin.start_coin()
		87:
			$Pirate/shel3.visible = true
			$Pirate/crab.visible = true
			$Effects/Coin.start_coin()
			$Pirate/ship.visible = true
		88:
			$Effects/Coin.start_coin()
			$Pirate/crab2.visible = true
		89:
			$Effects/Coin.start_coin()
		90:
			$Effects/Coin.start_coin()
			$Chest.play()
			$Pirate/Chest.visible = true
		91:
			$Pirate/shel4.visible = true
			$Pirate/Chest2.visible = true
			$Effects/Coin.start_coin()
			$Chest.play()
		92:
			$Effects/Coin.start_coin()
			$Pirate/Chest3.visible = true
			$Chest.play()
		93:
			$Effects/Coin.start_coin()
			$Pirate/Chest4.visible = true
			$Chest.play()

		94:
			$Effects/Coin.start_coin()
			money()
		95:
			$Effects/Coin.start_coin()
		96:
			$Effects/Coin.start_coin()
			money()
		97:
			$Effects/Coin.start_coin()
		98:
			$Effects/Coin.start_coin()
			money()
			money()
			money()
			money()
		99:
			$Pirate.visible = false
			$Ground.texture = BG_normal
			AudioManager.play_music("level1")
			AudioManager.mute_layer("level1", ["kick"], false, 0.5)
			AudioManager.mute_layer("level1", ["melody"], false, 0.5)
			bober.get_node("TextureRect").texture = bober_normal
		100:
			$Effects/Coin.start_coin()
		101:
			pass
		102:
			pass
		101:
			pass
		102:
			pass
		103:
			pass
		104:
			pass
		105:
			pass
		106:
			pass
		107:
			pass
		108:
			pass
		109:
			pass
		111:
			pass
		112:
			pass
		113:
			pass
		114:
			pass
		115:
			pass
		116:
			pass
		117:
			pass
		118:
			pass
		119:
			pass
		120:
			pass
		121:
			pass
		122:
			pass
		123:
			pass
		124:
			pass
		125:
			pass
		126:
			pass
		127:
			pass
		128:
			pass
		129:
			pass
		130:
			pass
		131:
			pass
		132:
			pass
		133:
			pass
		134:
			pass
		135:
			pass
		136:
			pass
		137:
			pass
		138:
			pass
		139:
			pass
		140:
			pass
		141:
			pass
		142:
			pass
		143:
			pass
		144:
			pass
		145:
			pass
		146:
			pass
		147:
			pass
		148:
			pass
		149:
			pass
		150:
			pass
	counter_actualization()
		
	
func counter_actualization():
	$Counter.text = str(main.counter)
	
#TWEENS-------------------------------------
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

func tween_background_forest_change(color, time = 0.2):
	if tween_background_forest:
		tween_background_forest.kill()
	tween_background_forest = create_tween()
	tween_background_forest.tween_property($Ground, "modulate", Color(color), time).set_trans(Tween.TRANS_SINE)#Tween.TRANS_SINE



func star():
	var new_star = effect_star.instantiate()
	$Effects.add_child(new_star)
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	new_star.global_position = Vector2(randi_range(0,1920),1080)
	new_star.emitting = true
	
func money():
	var new_money = effect_money.instantiate()
	$Effects.add_child(new_money)
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	new_money.global_position = Vector2(randi_range(0,1920),1080)
	new_money.emitting = true

func super_text(text):
	var new_super_text = effect_super_text.instantiate()
	$Effects.add_child(new_super_text)
	new_super_text.super_text(text)

func reset():
	bober.modulate = Color(1,1,1,0)
	$Counter.visible = false
	$TopCenterText.visible = false 
	$TopCenterText.modulate = Color(0,0,0,1)
#BLO
