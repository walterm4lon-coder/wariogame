extends Control

func _on_try_again_button_pressed() -> void:
	Global.lives = 5
	Global.minigames_done = 1
	get_tree().change_scene_to_file("res://scenes/minigame_1.tscn")


func _on_main_menu_button_pressed() -> void:
	Global.lives = 5
	Global.minigames_done = 1
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
