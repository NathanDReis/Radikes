extends CharacterBody2D
class_name BaseCharacter

var _can_attack: bool = true
var _attack_animation_name: String = ""

@export_category("Variables")
@export var _move_speed: float = 128.0;
@export var _left_attack_name: String = ""
@export var _right_attack_name: String = ""

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
	if not _can_attack:
		return
	
	if Input.is_action_just_pressed("left_attack"):
		_can_attack = false
		_attack_animation_name = _left_attack_name
		set_physics_process(false)
	
	if Input.is_action_just_pressed("right_attack"):
		_can_attack = false
		_attack_animation_name = _right_attack_name
		set_physics_process(false)
	



func _animate() -> void:
	var isLeftDirection = velocity.x < 0;
	_sprite2D.flip_h = isLeftDirection;
		
	if not _can_attack:
		_animation.play(_attack_animation_name)
		return
		
	if velocity:
		_animation.play("run")
		return
		
	_animation.play("idle")


func _on_animation_finished(_anim_name: StringName) -> void:
	if _anim_name == _attack_animation_name:
		_can_attack = true
		set_physics_process(true)
	
