extends RigidBody2D

signal lives
signal score # Signal up, call down


func _ready():
	contact_monitor = true
	set_max_contacts_reported(4)
	var WorldNode = get_node("/root/World") 
	connect("score", WorldNode, "increase_score") # Connects signal above
	connect("lives", WorldNode, "decrease_lives")
	

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Tiles"):
			emit_signal("score",body.score) #allows ball to emit a signal saying "I increased the score!" (by tile score value)
			body.queue_free()
    
	if position.y > get_viewport_rect().end.y:
		emit_signal("lives") # Tell the world node to decrease the amount of lives that I have
		queue_free()
		print("Died")
		