extends TileSet
# "tool" makes this also apply when placing tiles by hand in the tilemap editor too.
tool

var binds = {
#	7: [9],
#	8: [9],
	9: [10,11,12,14,16,17,18,19],
	10: [9,11,12,14,16,17,18,19],
	15: [16,17,18,19],
	16: [18],
	18: [16],
	17: [19],
	19: [17],
	
}

func _is_tile_bound(id, neighbour_id):
	if id in binds:
		return neighbour_id in binds[id]
	return false
