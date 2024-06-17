extends Node2D

export var mainGameScene : PackedScene


func _on_Button_button_up():
	get_tree().change_scene(mainGameScene.resource_path)



func _on_Quit_pressed():
	get_tree().quit()
