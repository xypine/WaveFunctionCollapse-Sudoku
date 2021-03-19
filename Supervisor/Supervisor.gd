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
	pass

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
	print("%s,%s,%s" % [pos, commit, val])
	if commit:
		setTile(pos, [val])


func _on_Update_All_pressed():
	for i in tiles.values():
		i.update_possible_indicators()


func _on_Reset_All_pressed():
	$Question.hide()
	for i in tiles.values():
		i.reset()
