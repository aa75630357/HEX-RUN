extends StaticBody2D

var rotate_speed = 0.0
var My_Scale = 6
var delta_Scale = 0.8
var clockwise = true
func _ready():
	pass
	
func _process(delta):
	if rotate_speed == 0:
		return
	var dir = 1 if clockwise else -1
	rotate(deg_to_rad(rotate_speed * dir) * delta)


func _physics_process(delta):
		scale =Vector2(My_Scale,My_Scale)
		My_Scale = My_Scale - delta_Scale * delta
		if My_Scale <= 0.1:
			#解放節點也就是消失
			queue_free()
			return
		


func _on_hitbox_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Score.Score += 1
		Score.update_score()
		# 停用碰撞，避免連續加分
		$hitbox.queue_free()
