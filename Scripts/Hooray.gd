extends Node2D

func _input(event):
	# built-in that handles event imput
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene("res://Scenes/World.tscn")