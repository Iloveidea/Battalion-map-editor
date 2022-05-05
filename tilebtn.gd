extends MenuButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"





func _ready():
	
	var menu = get_popup()
	var basetile = PopupMenu.new()
	basetile.name = "basetile"
	basetile.add_item("Plains",0)
	basetile.add_item("Forest",1)
	basetile.add_item("Mountain",2)
	basetile.add_item("Hill",3)
	basetile.add_item("Depleted Ore Deposit",4)
	basetile.add_item("Enriched Ore Deposit",5)
	basetile.add_item("Ore Deposit",6)
	basetile.add_item("Wasteland",7)
	basetile.add_item("Volcano",8)
	basetile.add_item("sea",9)
	basetile.add_item("shore",10)
	basetile.add_item("reef",11)
	basetile.add_item("rock_formation",12)
	basetile.add_item("desert",13)
	basetile.add_item("archipelago",14)
	basetile.add_item("Bridge(horizontal)",16)
	basetile.add_item("Bridge(vertical)",17)
	basetile.add_item("High Bridge(horizontal)",18)
	basetile.add_item("High Bridge(vertical)",19)
	
	
	
	
	
	
	menu.add_child(basetile)
	menu.add_submenu_item("basetile","basetile")
	
	menu.connect("id_pressed", self, "_on_tilebtn")
	basetile.connect("id_pressed", self, "_on_tilebtn")
#	connect("id_pressed", self, "file_menu")

func _on_tilebtn(id):
	get_node("..").mode = "t"
	get_node("..").settilenum(id)
	get_node("..").set_texture()
#	match id:
#		0:
#			get_node("..").settilenum(id)
#		1:
#			get_node("..").settilenum(id)
#		2:
#			get_node("..").settilenum(id)
#		3:
#			get_node("..").settilenum(id)
#		4:
#			get_node("..").settilenum(id)
#		5:
#			get_node("..").settilenum(id)
#		6:
#			get_node("..").settilenum(id)
