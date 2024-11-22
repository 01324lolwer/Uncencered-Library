class_name Player
extends CharacterBody2D


@export var speed : float = 400.0

@onready var sprite_2d = $Sprite2D
@onready var animation_player = $AnimationPlayer


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	# Flip the sprite to face the direction it is moving in.
	if direction != 0:
		sprite_2d.flip_h = direction > 0
	
	handle_animations(direction)
	
	move_and_slide()

func handle_animations(direction : float) -> void:
	if abs(direction) > 0.1 and is_on_floor():
		animation_player.play("running")
	elif not is_on_floor():
		animation_player.play("Walk Up")
	else:
		animation_player.play("Idle")
