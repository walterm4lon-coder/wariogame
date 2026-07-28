extends Control

@onready var garlic_animation: AnimationPlayer = $Garlic/AnimationPlayer

func _ready() -> void:
	garlic_animation.play("victory")



func _on_main_menu_button_pressed() -> void:
	Global.lives = 5
	Global.minigames_done = 0
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")


func _on_try_again_button_pressed() -> void:
	pass # Replace with function body.
