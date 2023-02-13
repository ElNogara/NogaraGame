extends Area2D

var velocity = Vector2.ZERO
var shoot_speed = -100

func _physics_process(delta) -> void:
	velocity.x = shoot_speed * delta
	
	translate(velocity)


func _on_clearNode_screen_exited():
	queue_free()
