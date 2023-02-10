extends Area2D

func _on_checkpoint_body_entered(body):
	if body.name == "Player":
		body.hit_checkpoint()
		$anim.play("checked")
		$collision.queue_free()
