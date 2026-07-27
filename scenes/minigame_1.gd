extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer 
# ^^^ You dragged this in the scene by the way 



var garlic_collected = 0 # just keeping track of garlic collected
var timer_end = false # boolean (true or false) stating whether the timer ended
var round_finished = false

func _ready() -> void:

		#Below you can see that I have a function that I named. I grab a 
		#function from it that was created in it's script and use `await` to 
		# tell the script to wait for a signal, or for when a function finshes


	await themed_timer.Timer(10.0) #accessing a function from this node
	#after this is compeleted...
	timer_end = true # now we're saying "oh ye you ran out of time"

func _process(_delta: float) -> void:
	if round_finished:
		return

	if garlic_collected == 3:
		round_finished = true
		get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")

	elif timer_end:
		round_finished = true

		print("LIVES BEFORE: ", Global.lives)
		Global.lives -= 1
		print("LIVES AFTER: ", Global.lives)

		if Global.lives <= 0:
			print("OPENING LOSE SCREEN")
			get_tree().change_scene_to_file("res://scenes/lose_screen.tscn")
		else:
			Global.minigames_done -= 1
			get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")


func garlic_connect() -> void:
	pass # Replace with function body.


func _on_node_2d_garlic_collected() -> void:
	pass # Replace with function body.
