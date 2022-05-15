extends MenuButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"





func _ready():
	
	var unitmenu = get_popup()
	
	unitmenu.add_item("delunit",0)
	
	
	var p1unit = PopupMenu.new()
	p1unit.name = "p1unit"
	p1unit.add_item("Strike Commando",1100)
	p1unit.add_item("Heavy Commando",1101)
	p1unit.add_item("Scorpion Tank",1102)
	p1unit.add_item("Lancer Tank",1103)
	p1unit.add_item("Flak Tank",1104)
	p1unit.add_item("Stealth Tank",1105)
	p1unit.add_item("Scorpion Tank",1106)
	p1unit.add_item("Annihilator Tank",1107)
	p1unit.add_item("Mortar Truck",1108)
	p1unit.add_item("Rocket Truck",1109)
	p1unit.add_item("Jammer Truck",1110)
	p1unit.add_item("Warmachine",1111)
	p1unit.add_item("Turret",1112)
	p1unit.add_item("Intrepid",1113)
	p1unit.add_item("Corvette",1114)
	p1unit.add_item("Hunter",1115)
	p1unit.add_item("Battlecruiser",1116)
	p1unit.add_item("U-Boat",1117)
	p1unit.add_item("Raptor Fighter",1119)
	p1unit.add_item("Vulture Drone",1120)
	p1unit.add_item("Condor Bomber",1121)
	p1unit.add_item("Blockade",1123)
	
	var p2unit = PopupMenu.new()
	p2unit.name = "p2unit"
	p2unit.add_item("Strike Commando",1200)
	p2unit.add_item("Heavy Commando",1201)
	p2unit.add_item("Scorpion Tank",1202)
	p2unit.add_item("Lancer Tank",1203)
	p2unit.add_item("Flak Tank",1204)
	p2unit.add_item("Stealth Tank",1205)
	p2unit.add_item("Scorpion Tank",1206)
	p2unit.add_item("Annihilator Tank",1207)
	p2unit.add_item("Mortar Truck",1208)
	p2unit.add_item("Rocket Truck",1209)
	p2unit.add_item("Jammer Truck",1210)
	p2unit.add_item("Warmachine",1211)
	p2unit.add_item("Turret",1212)
	p2unit.add_item("Intrepid",1213)
	p2unit.add_item("Corvette",1214)
	p2unit.add_item("Hunter",1215)
	p2unit.add_item("Battlecruiser",1216)
	p2unit.add_item("U-Boat",1217)
	p2unit.add_item("Raptor Fighter",1219)
	p2unit.add_item("Vulture Drone",1220)
	p2unit.add_item("Condor Bomber",1221)
	p2unit.add_item("Blockade",1223)
	
	var transporter = PopupMenu.new()
	transporter.name = "transporter"
	transporter.add_item("del",65535)
	transporter.add_item("Leviathan Barge",18)
	transporter.add_item("Albatross Transport",22)
	
	unitmenu.add_child(p1unit)
	unitmenu.add_submenu_item("p1unit","p1unit")
	unitmenu.add_child(p2unit)
	unitmenu.add_submenu_item("p2unit","p2unit")
	unitmenu.add_child(transporter)
	unitmenu.add_submenu_item("transporter","transporter")
	
	unitmenu.connect("id_pressed", self, "_on_unitbtn")
	p1unit.connect("id_pressed", self, "_on_unitbtn")
	p2unit.connect("id_pressed", self, "_on_unitbtn")
	transporter.connect("id_pressed", self, "_transporter_on_unitbtn")
#	connect("id_pressed", self, "file_menu")

func _transporter_on_unitbtn(id):
	get_node('../..').mode = "tran"
	get_node('../..').set_transporternum(id)
	get_node('../..').set_texture()

func _on_unitbtn(id):
	get_node('../..').mode = "u"
	get_node('../..').setunitnum(id)
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
