extends KinematicBody2D
var speed = 400
var velocity = Vector2.ZERO
var direction = Vector2.ZERO
func _physics_process(delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		direction.y=-1
	if Input.is_action_pressed("ui_down"):
		direction.y=1
	if Input.is_action_pressed("ui_left"):
		direction.x=-1
	if Input.is_action_pressed("ui_right"):
		direction.x=1
	direction=direction.normalized()
	velocity = lerp(velocity,direction*speed,delta*30)
	move_and_slide(velocity)
