extends Node2D
var score = 0
var save_path = "res://savegame.sav"
var config = ConfigFile.new()
var load_data = config.load(save_path)

func save_data():
	  config.set_value("Save","score",score)
	  config.save(save_path)
func load_data():
	  score = config.get_value("Save","score")

func _physics_process(delta):
	if Input.is_action_pressed("save"):
		get_node("/root/Global").load_data()
	if Input.is_action_pressed("ui_end"):
		queue_free()		
