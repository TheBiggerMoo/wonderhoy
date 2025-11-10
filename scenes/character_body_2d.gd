extends CharacterBody2D


const SPEED = 50.0
const JUMP_VELOCITY = -350.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left_arrow", "right_arrow")
	if direction:
		velocity.x = direction * SPEED
		if Input.is_action_pressed("space") and is_on_floor():
			print("banana")
			velocity.x = velocity.x * 0.5
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
