extends Node2D
var Score = 0
var is_game_over = false


#@onready等場景開始跑時才會開始抓節點
@onready var timer = $ScoreTimer
@onready var score_label = $Score/ScorePrint
@onready var end_game = $End_game

func _ready():
	pass

func _on_Timer_timeout():
	if is_game_over:
		return
