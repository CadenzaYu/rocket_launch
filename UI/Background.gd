extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var backgrounds = {
		0: preload("res://assets/images/background0.jpeg"),
		1: preload("res://assets/images/background1.jpeg"),
		2: preload("res://assets/images/background6.jpeg"),
		3: preload("res://assets/images/background3.jpeg"),
		4: preload("res://assets/images/background4.jpeg"),
		5: preload("res://assets/images/background5.jpeg"),
		6: preload("res://assets/images/background2.jpeg"),
		7: preload("res://assets/images/background7.jpeg"),
		8: preload("res://assets/images/background8.jpeg"),
		9: preload("res://assets/images/background9.jpeg"),
		10: preload("res://assets/images/background10.jpeg"),
		11: preload("res://assets/images/background11.jpeg"),
		12: preload("res://assets/images/background12.jpeg"),
		13: preload("res://assets/images/background13.jpeg"),
		14: preload("res://assets/images/background14.jpeg"),
		15: preload("res://assets/images/background15.jpeg"),
		16: preload("res://assets/images/background16.jpeg")}
		
onready var texture_rect = $TextureRect



func _ready():
	set_background(0)
	
# set background
func set_background(index:int):
	var c = max (20, 255- 8 * index)
	texture_rect.modulate = Color8(c,c,c)
	texture_rect.texture = backgrounds[randi() % backgrounds.size()]
	

