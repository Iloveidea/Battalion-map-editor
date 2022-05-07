extends MenuButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"





func _ready():
	
	var menu = get_popup()
	
	menu.add_item("delbuild",65535)
	
	var p1build = PopupMenu.new()
	p1build.name = "p1build"
	p1build.add_item("Command Center",100)
	p1build.add_item("Factory",101)
	p1build.add_item("Oil Refinery",102)
	p1build.add_item("Advanced Oil Refinery",103)
	p1build.add_item("Oil Rig",104)
	p1build.add_item("Sea Control",105)
	p1build.add_item("Ground Control",106)
	p1build.add_item("Air Control",107)
	
	var p2build = PopupMenu.new()
	p2build.name = "p2build"
	p2build.add_item("Command Center",200)
	p2build.add_item("Factory",201)
	p2build.add_item("Oil Refinery",202)
	p2build.add_item("Advanced Oil Refinery",203)
	p2build.add_item("Oil Rig",204)
	p2build.add_item("Sea Control",205)
	p2build.add_item("Ground Control",206)
	p2build.add_item("Air Control",207)
	
	var neutralbuild = PopupMenu.new()
	neutralbuild.name = "neutralbuild"
	neutralbuild.add_item("Command Center",900)
	neutralbuild.add_item("Factory",901)
	neutralbuild.add_item("Oil Refinery",902)
	neutralbuild.add_item("Advanced Oil Refinery",903)
	neutralbuild.add_item("Oil Rig",904)
	neutralbuild.add_item("Sea Control",905)
	neutralbuild.add_item("Ground Control",906)
	neutralbuild.add_item("Air Control",907)
	
	
	
	menu.add_child(neutralbuild)
	menu.add_child(p1build)
	menu.add_child(p2build)
	menu.add_submenu_item("neutralbuild","neutralbuild")
	menu.add_submenu_item("p1build","p1build")
	menu.add_submenu_item("p2build","p2build")
	
	menu.connect("id_pressed", self, "_on_tilebtn")
	p1build.connect("id_pressed", self, "_on_tilebtn")
	p2build.connect("id_pressed", self, "_on_tilebtn")
	neutralbuild.connect("id_pressed", self, "_on_tilebtn")
#	connect("id_pressed", self, "file_menu")

func _on_tilebtn(id):
	get_node('../..').mode = "b"
	get_node('../..').set_buildnum(id)
	get_node('../..').set_texture()
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
