extends Area2D

func _on_goal_body_entered(body):
	if body.name == "Player":
		$confetti.emitting = true
