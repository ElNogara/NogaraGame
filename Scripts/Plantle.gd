extends KinematicBody2D

var facing_left = false

onready var bullet_instance = preload("res://Prefabs/Enemies/seed.tscn")
onready var player = Global.get("player")

func _physics_process(delta) -> void:
	if player:
		var distance = player.global_position.x - self.position.x
		facing_left = true if distance < 0 else false
	
	if facing_left:
		self.scale.x = 1
	else:
		self.scale.x = -1
		
func shoot():
	var bullet = bullet_instance.instance()
	add_child(bullet)
	bullet.global_position = $spawnShoot.global_position


func _on_playerDetector_body_entered(body):
	$anim.play("attack")

func _on_playerDetector_body_exited(body):
	$anim.play("idle")


func _on_hitbox_body_entered(body):
	queue_free()
