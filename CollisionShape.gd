extends CollisionShape
func _ready():
	pass
func colidiu(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
