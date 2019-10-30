extends StaticBody2D

var tile1 = preload("res://Assets/tile1.png")
var tile2 = preload("res://Assets/tile2.png")
var tile3 = preload("res://Assets/tile3.png")
var tile4 = preload("res://Assets/tile4.png")
var tile5 = preload("res://Assets/tile5.png")
var tile6 = preload("res://Assets/tile6.png")


onready var sprite = get_node("Sprite")

var score = 10

func _ready():
	if get_parent().name == "Tiles 1":
		sprite.set_texture(tile1)
	if get_parent().name == "Tiles 2":
		sprite.set_texture(tile2)
		score = 20
	if get_parent().name == "Tiles 3":
		sprite.set_texture(tile3)
		score = 30
	if get_parent().name == "Tiles 4":
		sprite.set_texture(tile4)
		score = 40
	if get_parent().name == "Tiles 5":
		sprite.set_texture(tile5)
		score = 50
	if get_parent().name == "Tiles 6":
		sprite.set_texture(tile6)
		score = 60
				
		