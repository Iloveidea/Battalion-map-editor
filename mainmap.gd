extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var isDrag = false
var startPos = Vector2.ZERO
var startCamPos = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			if event.is_pressed():
				var x = world_to_map(event.position + get_node("..").get_camera()).x
				var y = world_to_map(event.position + get_node("..").get_camera()).y
				if x >  -2 && x < get_node("..").get_mapX() + 1 && y > -2 && y < get_node("..").get_mapY() + 1:
					if get_node("..").mode == "t":
						get_node("..").settile(x,y)
					if get_node("..").mode == "b":
						get_node("..").set_build(x,y)
					if get_node("..").mode == "u":
						get_node("..").setmapunit(x,y)
					if get_node("..").mode == "tran":
						get_node("..").set_transporter(x,y)
		elif event.button_index == 2:
			if event.is_pressed():
				isDrag = true
				startPos = event.position
				startCamPos = get_node("..").get_camera()
			else:
				isDrag =false
				startPos = Vector2.ZERO
			pass
	if isDrag:
		get_node("..").set_camera(startCamPos + startPos - event.position)
	
