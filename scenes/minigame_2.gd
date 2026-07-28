extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer
var round_finished = false

var buttons_pressed := 0
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(7.0)
	#after this is completed...
	timer_end = true 


func _process(delta: float) -> void:
	if buttons_pressed == 7:
		if Global.minigames_done > 2:
			get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")
	
	if timer_end:
		if Global.lives <= 0:
			get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
		else:
			Global.minigames_done -= 1
			Global.lives = Global.lives - 1
			get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")
	


func _on_pressed() -> void:
	pass # Replace with function body.


func _on_button_1_pressed() -> void:
	pass # Replace with function body.
 
