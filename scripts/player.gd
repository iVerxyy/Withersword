extends CharacterBody2D

const SPEED = 130.0

var is_attacking = false
var can_move = true

func _ready():
	# Load and resize custom woody cursor
	var cursor_image = load("res://sprites/characters/Woody Cursour.png").get_image()
	cursor_image.resize(48, 48)
	var cursor_texture = ImageTexture.create_from_image(cursor_image)
	Input.set_custom_mouse_cursor(cursor_texture, Input.CURSOR_ARROW, Vector2(8, 8))

func _physics_process(delta):
	# Check if player can move
	if not can_move:
		velocity = Vector2.ZERO
		move_and_slide()
		return
	
	# Get movement input (WASD)
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	
	# Normalize diagonal movement
	direction = direction.normalized()
	
	# Apply movement
	velocity = direction * SPEED
	move_and_slide()
	
	# Update sprite facing based on mouse position
	update_facing()
	
	# Update animation (but don't interrupt attack!)
	update_animation(direction)
	
	# Attack with left mouse click (one click = one attack)
	if Input.is_action_just_pressed("attack") and not is_attacking:
		attack()

func update_facing():
	# Get mouse position in world
	var mouse_pos = get_global_mouse_position()
	var player_pos = global_position
	
	# Flip sprite based on mouse position
	if mouse_pos.x < player_pos.x:
		$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D. flip_h = false

func update_animation(direction):
	# Don't change animation during attack
	if is_attacking: 
		return
	
	# Play movement or idle animation
	if direction != Vector2.ZERO:
		$AnimatedSprite2D. play("move")
	else:
		$AnimatedSprite2D.play("idle")

func attack():
	if is_attacking or not can_move:
		return
	
	is_attacking = true
	$AnimatedSprite2D.play("attack")
	
	# Wait for attack animation to finish
	await $AnimatedSprite2D.animation_finished
	
	is_attacking = false

func die():
	$AnimatedSprite2D.play("death")
	set_physics_process(false)
	await $AnimatedSprite2D.animation_finished
	queue_free()
