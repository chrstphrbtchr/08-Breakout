extends KinematicBody2D

var new_ball = preload("res://Scenes/Ball.tscn") # When the time comes to load a new ball, no delay (preload)

func _ready():
	set_process_input(true) # hey! pay attn. to input! 
	

func _physics_process(delta):
	var mouse_x = get_viewport().get_mouse_position().x
	position = Vector2(mouse_x, position.y)
	
func _input(event):
	# built-in that handles event imput
	if event is InputEventMouseButton and event.pressed:
		if not get_parent().has_node("Ball"): # if ball is no longer a child of world (meaning it's fallen offscreen)
			var ball = new_ball.instance()  # Instance creates a new scene
			ball.position = position - Vector2(0,32)
			ball.linear_velocity = Vector2(200,-200)
			ball.name = "Ball" # has to be the same, so you don't have infinite balls!
			get_parent().add_child(ball) # Adds ball back to the the tree, now a child of world!
			
