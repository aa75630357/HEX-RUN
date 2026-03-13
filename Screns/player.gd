extends CharacterBody2D

const SPEED = 100.0


	#這就是public void s(){}一樣是個函數delta類型void是是否回傳
func _physics_process(delta):
	#這邊要處理移動
	#這邊是宣告一個2D的物件就會有(X,Y)
	var input_direction = Vector2.ZERO
	#這邊滿特別的get_axis(這是預設負數,預設正數)
	input_direction.x = Input.get_axis("ui_left","ui_right")
	input_direction.y = Input.get_axis("ui_up","ui_down")
	#這邊是點AWSD時候XY軸會有變化所去帶動的
	if input_direction.length() > 0:
		# 有輸入時：正規化並設定速度
		velocity = input_direction.normalized() * SPEED
	else:
		#這是不會急停會有緩衝比較正常這樣
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	
	move_and_slide()

func _on_hitbox_body_entered(body):
	if body.is_in_group("hex"):
		queue_free()
		EndGame.visible = true
