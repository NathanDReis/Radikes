extends Area2D
class_name LadderArea


func _on_body_exited(_body: Node2D) -> void:
	if _body is not BaseCharacter:
		return
		
	_body.update_mountain_state(global_position.y > _body.global_position.y)
		
