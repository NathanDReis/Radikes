extends CharacterBody2D
class_name BaseCharacter

@export_category("Variables")
@export var _move_speed: float = 128.0;

@export_category("Objects")
@export var _sprite2D: Sprite2D
@export var _animation: AnimationPlayer

func _process(_delta: float) -> void:
	pass
	
	
func _physics_process(_delta: float) -> void:
	_move()
	_attack()
	_animate()
	
func _move() -> void:
	var _direction: Vector2 = Input.get_vector(
		"move_left", "move_right", "move_up", "move_down"
	)
	
	velocity = _direction * _move_speed
	move_and_slide()
	
func _attack() -> void:
	if Input.is_action_just_pressed("left_attack"):
		pass
		
	if Input.is_action_just_pressed("right_attack"):
		pass
	
func _animate() -> void:
	var isLeftDirection = velocity.x < 0;
	_sprite2D.flip_h = isLeftDirection;
		
	if velocity:
		_animation.play("run")
		return
		
	_animation.play("idle")
