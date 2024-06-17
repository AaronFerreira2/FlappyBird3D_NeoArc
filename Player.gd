extends RigidBody

func _ready():
	$tema.play() 
	
func _physics_process(delta):
	if Input.is_action_pressed("voa"):
		$batendoasas.play()
		linear_velocity.y = 400*delta
	if Input.is_action_pressed("test"):
		get_tree().reload_current_scene()


func _on_level1_timeout():
	$tema.stop()
	$tema2.play()


func _on_level2_timeout():
	$tema2.stop()
	$tema3.play()
