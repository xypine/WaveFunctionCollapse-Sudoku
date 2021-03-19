extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tiles = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addTile(tile: Tile):
	tiles[tile.pos] = tile
	print("Registered %s" % (tile.pos + Vector2(1, 1)) )

func getTile(pos: Vector2):
	return tiles[pos]

func getRow(row: int):
	var out = []
	for i in tiles.values():
		if i.row == row:
			out.append(i)
	return out
func getCol(col: int):
	var out = []
	for i in tiles.values():
		if i.column == col:
			out.append(i)
	return out
func getSubtile(pos: Vector2):
	var out = []
	for i in tiles.values():
		if i.subtile == pos:
			out.append(i)
	return out

func setTile(pos: Vector2, value: Array):
	var tile = tiles[pos]
	tile.possible = value
	tile.update_possible_indicators()

func askValue(tile: Tile):
	$Question.reset()
	$Question.current = tile.pos
	$Question.show()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Question_user_finished():
	var pos = $Question.current
	var commit = $Question.accepted
	var val = $Question.value
#	print("%s,%s,%s" % [pos, commit, val])
	if commit:
		setTile(pos, [val])


func _on_Update_All_pressed():
	for i in tiles.values():
		i.update_possible_indicators()

func prefab_Cross():
	var f = getRow(4)
	for i in f:
		i.modulate = Color(1, 0, 0)
	f = getCol(4)
	for i in f:
		i.modulate = Color(0, 1, 0)
	f = getSubtile( Vector2(2, 2) )
	for i in f:
		i.modulate = Color(0, 0, 1)

func _on_Reset_All_pressed():
	$Question.hide()
	for i in tiles.values():
		i.reset()


func _on_Yeet2_pressed():
	prefab_Cross()
