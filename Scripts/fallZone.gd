extends Area2D

func _on_fallZone_body_entered(body: Node) -> void:
	if body.name == "Player":
		get_tree().reload_current_scene()
