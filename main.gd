extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tilenum = int(0)
var unitnum = int(0)
var buildnum = int(0)
var mode = "t"
var atl = AtlasTexture.new()
var mapX = 10
var mapY = 15
var transporternum  = int(0)

func set_transporternum(i):
	transporternum = i
	if i == 65535 : transporternum = -1

func get_transporternum() ->int:
	return transporternum

func set_transporter(x,y):
	$transporter.set_cell(x,y,transporternum,false,false,0)
	pass

func get_transporter(x,y)->String:
	if $transporter.get_cell(x,y) == -1 : return "-1" 
	if $transporter.get_cell(x,y) == 0 : return "Strike Commando" 
	if $transporter.get_cell(x,y) == 1 : return "Heavy Commando" 
	if $transporter.get_cell(x,y) == 2 : return "Scorpion Tank" 
	if $transporter.get_cell(x,y) == 3 : return "Lancer Tank" 
	if $transporter.get_cell(x,y) == 4 : return "Flak Tank" 
	if $transporter.get_cell(x,y) == 5 : return "Stealth Tank" 
	if $transporter.get_cell(x,y) == 6 : return "Scorpion Tank" 
	if $transporter.get_cell(x,y) == 7 : return "Annihilator Tank" 
	if $transporter.get_cell(x,y) == 8 : return "Mortar Truck" 
	if $transporter.get_cell(x,y) == 9 : return "Rocket Truck" 
	if $transporter.get_cell(x,y) == 10 : return "Jammer Truck" 
	if $transporter.get_cell(x,y) == 11 : return "Warmachine" 
	if $transporter.get_cell(x,y) == 12 : return "Turret" 
	if $transporter.get_cell(x,y) == 13 : return "Intrepid" 
	if $transporter.get_cell(x,y) == 14 : return "Corvette" 
	if $transporter.get_cell(x,y) == 15 : return "Hunter" 
	if $transporter.get_cell(x,y) == 16 : return "Battlecruiser" 
	if $transporter.get_cell(x,y) == 17 : return "U-Boat" 
	if $transporter.get_cell(x,y) == 18 : return "Leviathan Barge" 
	if $transporter.get_cell(x,y) == 19 : return "Raptor Fighter" 
	if $transporter.get_cell(x,y) == 20 : return "Vulture Drone" 
	if $transporter.get_cell(x,y) == 21 : return "Condor Bomber" 
	if $transporter.get_cell(x,y) == 22 : return "Albatross Transport" 
	if $transporter.get_cell(x,y) == 23 : return "Blockade" 
	return "-1"

func get_unit(i)->String:
	if i%100 == 0 : return "Strike Commando" 
	if i%100 == 1 : return "Heavy Commando" 
	if i%100 == 2 : return "Scorpion Tank" 
	if i%100 == 3 : return "Lancer Tank" 
	if i%100 == 4 : return "Flak Tank" 
	if i%100 == 5 : return "Stealth Tank" 
	if i%100 == 6 : return "Scorpion Tank" 
	if i%100 == 7 : return "Annihilator Tank" 
	if i%100 == 8 : return "Mortar Truck" 
	if i%100 == 9 : return "Rocket Truck" 
	if i%100 == 10 : return "Jammer Truck" 
	if i%100 == 11 : return "Warmachine" 
	if i%100 == 12 : return "Turret" 
	if i%100 == 13 : return "Intrepid" 
	if i%100 == 14 : return "Corvette" 
	if i%100 == 15 : return "Hunter" 
	if i%100 == 16 : return "Battlecruiser" 
	if i%100 == 17 : return "U-Boat" 
	if i%100 == 18 : return "Leviathan Barge" 
	if i%100 == 19 : return "Raptor Fighter" 
	if i%100 == 20 : return "Vulture Drone" 
	if i%100 == 21 : return "Condor Bomber" 
	if i%100 == 22 : return "Albatross Transport" 
	if i%100 == 23 : return "Blockade" 
	return "-1"


func get_camera()->Vector2:
	return $camera.position

func set_camera(vec):
	$camera.position = vec

func get_mapX()->int:
	return mapX

func get_mapY()->int:
	return mapY

func set_mapX(x):
	mapX = x

func set_mapY(y):
	mapY = y

# Called when the node enters the scene tree for the first time.
func _ready():
	set_texture()
	set_line(mapX,mapY)
	pass # Replace with function body.

func set_texture():
	if mode == "t":
		atl.set_atlas($tile.get_tileset().tile_get_texture(tilenum))
		atl.set_region($tile.get_tileset().tile_get_region(tilenum))
		if tilenum == 9 : atl.set_region(Rect2(Vector2(560 - 56,112),Vector2(56,56)))
		if tilenum == 10 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		if tilenum == 15 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		if tilenum == 16 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		if tilenum == 17 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		if tilenum == 18 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		if tilenum == 19 : atl.set_region(Rect2(Vector2(112,112),Vector2(56,56)))
		pass
	elif mode == "b":
		if buildnum < 200 : 
			atl.set_atlas($building.get_tileset().tile_get_texture(buildnum - 100 + 10))
			atl.set_region($building.get_tileset().tile_get_region(buildnum - 100 + 10))
		elif buildnum < 300 : 
			atl.set_atlas($building.get_tileset().tile_get_texture(buildnum - 200 + 20))
			atl.set_region($building.get_tileset().tile_get_region(buildnum - 200 + 20))
		elif buildnum < 1000 : 
			atl.set_atlas($building.get_tileset().tile_get_texture(buildnum - 900))
			atl.set_region($building.get_tileset().tile_get_region(buildnum - 900))
	elif mode == "u":
		if unitnum < 1199:
			atl.set_atlas($gunit.get_tileset().tile_get_texture(unitnum - 1100))
			atl.set_region($gunit.get_tileset().tile_get_region(unitnum - 1100))
		elif unitnum < 1299:
			atl.set_atlas($runit.get_tileset().tile_get_texture(unitnum - 1200))
			atl.set_region($runit.get_tileset().tile_get_region(unitnum - 1200))
	elif mode == "tran":
		pass
	$camera/TextureRect3.set_texture(atl)
	pass

func set_line(x,y):
	$line.clear_points()
	$line.add_point(Vector2(0,0),0)
	$line.add_point(Vector2(0,56*y),1)
	$line.add_point(Vector2(56*x,56*y),2)
	$line.add_point(Vector2(56*x,0),3)
	$line.add_point(Vector2(0,0),4)
	
	$line2.clear_points()
	$line2.add_point(Vector2(-56,-56),0)
	$line2.add_point(Vector2(-56,56*y+56),1)
	$line2.add_point(Vector2(56*x+56,56*y+56),2)
	$line2.add_point(Vector2(56*x+56,-56),3)
	$line2.add_point(Vector2(-56,-56),4)
	pass

func gettiletex(t) ->Texture:
	return $tile.get_tileset().tile_get_texture(0)

func clearsample():
	$tile.set_cell(11,6,-1,false,false,0)
	$gunit.set_cell(11,6,-1,false,false,0)
	$runit.set_cell(11,6,-1,false,false,0)
	$bunit.set_cell(11,6,-1,false,false,0)
	$yunit.set_cell(11,6,-1,false,false,0)
	if mode == "t":
		settile(11,6)
	if mode == "b":
		pass
	if mode == "u":
		setmapunit(11,6)
	pass

func set_buildnum(i):
	buildnum = i

func get_buildnum()->int:
	return buildnum

func get_build(x,y)->int:
	if $building.get_cell(x,y) == -1 : return -1
	if $building.get_cell(x,y) < 10 : return $building.get_cell(x,y) + 900
	if $building.get_cell(x,y) < 20 : return $building.get_cell(x,y) + 100 - 10
	if $building.get_cell(x,y) < 30 : return $building.get_cell(x,y) + 200 - 20
	return -1

func set_build(x,y):
	if buildnum == 65535 : return $building.set_cell(x,y,-1,false,false,0)
	if buildnum < 200 : return $building.set_cell(x,y,buildnum - 100 + 10,false,false,0)
	if buildnum < 300 : return $building.set_cell(x,y,buildnum - 200 + 20,false,false,0)
	if buildnum < 1000 : return $building.set_cell(x,y,buildnum - 900,false,false,0)
	pass

func gettilenum() -> int:
	return tilenum

func settilenum(i):
	tilenum = i

func getunitnum(i) -> int:
	return unitnum

func setunitnum(i):
	unitnum = i
	if i == 0 : unitnum = -1

func setmapunit(x,y):
	$gunit.set_cell(x,y,-1,false,false,0)
	$runit.set_cell(x,y,-1,false,false,0)
	if unitnum == -1 : return
	if unitnum < 1199:
		$gunit.set_cell(x,y,unitnum - 1100,false,false,0)
	elif unitnum < 1299:
		$runit.set_cell(x,y,unitnum - 1200,false,false,0)
	pass

func getmapunit(x,y)->int:
	if $gunit.get_cell(x,y) != -1 : return $gunit.get_cell(x,y) + 1100
	if $runit.get_cell(x,y) != -1 : return $runit.get_cell(x,y) + 1200
	if $bunit.get_cell(x,y) != -1 : return $bunit.get_cell(x,y) + 1300
	if $yunit.get_cell(x,y) != -1 : return $yunit.get_cell(x,y) + 1400
	return -1

func gettile(x,y) ->int:
	if $tile.get_cell(x,y) == 9:
		return 90000 + $tile.get_tileset().autotile_get_bitmask(9,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 10:
		return 80000 + $tile.get_tileset().autotile_get_bitmask(10,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 15:
		return 70000 + $tile.get_tileset().autotile_get_bitmask(15,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 16:
		return 60000 + $tile.get_tileset().autotile_get_bitmask(16,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 17:
		return 50000 + $tile.get_tileset().autotile_get_bitmask(17,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 18:
		return 40000 + $tile.get_tileset().autotile_get_bitmask(18,$tile.get_cell_autotile_coord(x,y))
	elif $tile.get_cell(x,y) == 19:
		return 30000 + $tile.get_tileset().autotile_get_bitmask(19,$tile.get_cell_autotile_coord(x,y))
	return $tile.get_cell(x,y)

func settile(x,y):
	$tile.set_cell(x,y,tilenum,false,false,0)
	$tile.update_bitmask_region()
