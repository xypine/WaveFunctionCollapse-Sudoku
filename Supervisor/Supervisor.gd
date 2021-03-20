extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var saveField = $"../../Controls/V/LineEdit"

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
		updateNumbers()
		updateNeigh(pos)

func updateNumbers():
	for i in tiles.values():
		i.update_possible_indicators()

func saveGame():
	var out = ""
	for y in range(0, 9):
		for x in range(0, 9):
			var tile
			for i in tiles.values():
				if i.column == x and i.row == y:
					tile = i
			if is_instance_valid(tile):
				if len(tile.possible) > 1:
					out += "."
				elif len(tile.possible) == 1:
					out += str(tile.possible[0])
				else:
					out += "."
	print(out)
	saveField.text = out
	return(out)
func parseGame(inp: String):
	var t_list = {}
	for i in tiles.values():
		var pos = i.index
		t_list[pos] = i
		i.text = str(pos)
	var ind = 0
	for i in inp:
		var possible = [1, 2, 3, 4, 5, 6, 7, 8, 9]
		if i == "." or i == "0":
			pass
		else:
			t_list[ind].possible = [int(i)]
		ind += 1
	updateNumbers()
func solve():
	print("Solving...")
	var lowest
	var lowest_score = 999999
	randomize()
	var rand = tiles.values()
	rand.shuffle()
	for i in rand:
		var s = len(i.possible)
		if s > 1:
			if s < lowest_score:
				lowest = i
				lowest_score = s
	if lowest_score != 999999:
		print("Best score was for %s: %s" % [lowest.pos, lowest.possible[0]] )
		lowest.modulate = Color(0, 1, 0)
#		rand_seed(lowest.ind)
		var shuffled = lowest.possible
		shuffled.shuffle()
		lowest.possible = [ lowest.possible[0] ] #shuffled
		updateNeigh(lowest.pos, true)
	else:
		print("No valid moves left")
#	for i in range(1):
#		for t in tiles.values():
#			updateNeigh( t.pos )
	markIncorrect()

func _on_Update_All_pressed():
	solve()


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

func check(list: Array):
	var incorrect = []
	var sub_used = []
	for i2 in list:
		var val = i2.possible
		if len(val) == 1:
			if val[0] in sub_used:
				incorrect.append(i2)
			else:
				sub_used.append(val[0])
	if len(sub_used) == 9:
		var sum = 0
		for i in list:
			sum += i.possible[0]
		if sum != 45:
			for i in list:
				incorrect.append(i)
	return incorrect
func updateNeigh(pos: Vector2, recursive: bool = true):
	var tile = tiles[pos]
	var sub = getSubtile(tile.subtile)
	var col = getCol(tile.column)
	var row = getRow(tile.row)
#	print(tile, sub, col, row)
	if len(tile.possible) == 1:
		for l in [sub, col, row]:
			for n in l:
	#			n.modulate = Color(0, 1, 0)
				if n != tile:
					var value = tile.possible[0]
					if value in n.possible:
						if len(n.possible) > 1:
							n.possible.remove(n.possible.find(value))
							if recursive:
								if len(n.possible) == 1:
									updateNeigh(n.pos, true)
	updateNumbers()
func markIncorrect():
#	randomize()
	var incorrect = []
	var rand = tiles.values()
	rand.invert()
#	rand.shuffle()
	for i in rand:
		i.modulate = Color(1, 1, 1, 1)
		var sub = getSubtile(i.pos)
		var col = getCol(i.column)
		var row = getRow(i.row)
		for l in [sub, col, row]:
			var inc = check(l)
			for z in inc:
				if not (z in incorrect):
					incorrect.append(z)
	for i in incorrect:
		i.modulate = Color(1, 0, 0)
#	print(incorrect)
func _on_Yeet2_pressed():
	markIncorrect()
	for i in tiles.values():
		updateNeigh( i.pos )


func _on_Save_pressed():
	var save = saveGame()
	if OS.has_feature('JavaScript'):
		JavaScript.eval("window.prompt('Level code:', '%s')" % save)


func _on_Load_pressed():
	if OS.has_feature('JavaScript'):
		var txt = JavaScript.eval("window.prompt('Level code?')")
		parseGame(txt)
	else:
		parseGame(saveField.text)
