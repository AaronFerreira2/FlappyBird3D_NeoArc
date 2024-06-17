extends Spatial

func _ready():
	pass
func _on_gerac_timeout():
	$gerac.start()
	var novoscanos = preload("res://Canos.tscn").instance()
	novoscanos.translation.y = rand_range(0, 4)
	novoscanos.translation.z = -33
	add_child(novoscanos)



func _on_Timer_timeout():
	$gerac.stop()
	$gerac2.start()
func _on_gerac2_timeout():
	var novoscanos2 = preload("res://Canos2.tscn").instance()
	novoscanos2.translation.y = rand_range(0, 4)
	novoscanos2.translation.z = -25
	add_child(novoscanos2)


func _on_Timer2_timeout():
	$gerac2.stop()
	$gerac3.start()


func _on_gerac3_timeout():
	var novoscanos3 = preload("res://Canos3.tscn").instance()
	novoscanos3.translation.y = rand_range(0, 4)
	novoscanos3.translation.z = -18
	add_child(novoscanos3)
func _on_Win_timeout():
	get_tree().change_scene("res://Win.tscn")



func _on_CollisionShape_tree_entered():
	get_tree().reload_current_scene()


func _on_Area_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
