extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_setmapsize_button_down():
	var x = int($mapx.text)
	var y = int($mapy.text)
	if x > 0 and y > 0 :
		get_node("../..").set_mapX(x)
		get_node("../..").set_mapY(y)
		get_node("../..").set_line(x,y)
	pass # Replace with function body.
