class_name DialogueController
extends Node

var current_dialogue : Dialogue
var current_line :  int = 0

@onready var dialogue_screen :  Panel = $"../HUD/DialogueScreen"
@onready var npc_name : Label = $"../HUD/DialogueScreen/DialoguePanel/NPCName"
@onready var npc_icon : TextureRect = $"../HUD/DialogueScreen/DialoguePanel/NPCIcon"
@onready var dialogue_label : Label = $"../HUD/DialogueScreen/DialoguePanel/Dialogue"

var player :  CharacterBody2D

func _ready():
	close_screen()
	
	# Find player by searching the scene tree
	player = get_tree().get_first_node_in_group("player")
	
	print("DialogueController ready!  Player reference:  ", player)

func set_dialogue(new_dialogue : Dialogue):
	print("=== set_dialogue() called ===")
	
	if not new_dialogue:
		print("ERROR: new_dialogue is null!")
		return
	
	current_dialogue = new_dialogue
	current_line = 0
	
	dialogue_screen.visible = true
	npc_name.text = new_dialogue.npc_name
	npc_icon.texture = new_dialogue.npc_icon
	dialogue_label.text = new_dialogue.lines[0]
	
	# Show "Press SPACE" prompt
	var continue_prompt = get_tree().get_first_node_in_group("continue_prompt")
	if continue_prompt:
		continue_prompt.visible = true
	
	# DISABLE PLAYER MOVEMENT
	if player:
		print("Setting can_move to FALSE")
		player.can_move = false
		player.velocity = Vector2.ZERO
		print("Player can_move is now:  ", player.can_move)
	else:
		print("ERROR: Player not found!")

func _input(event):
	if not current_dialogue:
		return
	
	# Press SPACE to advance dialogue
	if event.is_action_pressed("continue_dialogue"):
		print("SPACE pressed during dialogue")
		if current_line < current_dialogue.lines.size() - 1:
			current_line += 1
			dialogue_label.text = current_dialogue.lines[current_line]
			print("Advanced to line:  ", current_line)
		else:
			print("Dialogue finished, closing...")
			close_screen()

func close_screen():
	print("=== close_screen() called ===")
	dialogue_screen.visible = false
	current_dialogue = null
	current_line = 0
	
	# Hide "Press SPACE" prompt
	var continue_prompt = get_tree().get_first_node_in_group("continue_prompt")
	if continue_prompt:
		continue_prompt.visible = false
	
	# ENABLE PLAYER MOVEMENT
	if player:
		print("Setting can_move to TRUE")
		player.can_move = true
		print("Player can_move is now:  ", player.can_move)
