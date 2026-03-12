extends Timer

var hex_scene = preload("res://Object/hex.tscn")
var rotate_speed = 2
var clockwise = true
var Rng = RandomNumberGenerator.new()
var NRng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
var XYhard : int = 0
func _ready() -> void:
	call_deferred("spown_hex")


func spown_hex():
	var hex_node = hex_scene.instantiate()
	#這是宣告把資料夾的hex宣告成hex_node然後這邊是賦予它為節點也就是實體
	#轉角度而已
	hex_node.rotation = (PI / 6) * Rng.randi_range(0,11)
	#這邊是生成
	if XYhard > 10:
		#這邊是自己做的增加難度左右上下平移動
		hex_node.position = Vector2(Rng.randi_range(-75, 75), Rng.randi_range(-75, 75))	
	get_tree().current_scene.add_child(hex_node)
	if XYhard > 15:
		if NRng.randi_range(0 , 1) == 0:
			hex_node.clockwise = Rng.randi_range(0, 1) == 0
			hex_node.rotate_speed = randf_range(50,90)
		else:
			hex_node.rotate_speed = 0
func _on_timeout() -> void:
	spown_hex()
	XYhard = XYhard + 1
