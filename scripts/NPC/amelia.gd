extends Node2D

@export var npc_dialogue :   Dialogue

var player_in_range = false

func _ready():
	$Area2D.body_entered.connect(_on_body_entered)
	$Area2D.body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_in_range = true
		print("Player near Amelia!")
		
		# Show "Press E" prompt
		var interact_prompt = get_tree().get_first_node_in_group("interact_prompt")
		if interact_prompt:
			interact_prompt.visible = true

func _on_body_exited(body):
	if body.is_in_group("player"):
		player_in_range = false
		print("Player left Amelia")
		
		# Hide "Press E" prompt
		var interact_prompt = get_tree().get_first_node_in_group("interact_prompt")
		if interact_prompt: 
			interact_prompt.visible = false

func _input(event):
	if player_in_range and event. is_action_pressed("interact"):
		print("Trying to start dialogue...")
		var dialogue_controller = get_tree().get_first_node_in_group("dialogue_controller")
		
		if dialogue_controller:
			dialogue_controller.set_dialogue(npc_dialogue)
			
			# Hide "Press E" prompt when dialogue starts
			var interact_prompt = get_tree().get_first_node_in_group("interact_prompt")
			if interact_prompt:
				interact_prompt. visible = false
