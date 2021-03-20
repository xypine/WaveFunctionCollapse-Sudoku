extends Button
class_name Tile

var parent
var parent_ind
var ind

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var supervisor
var pos = Vector2(-1, -1)
var possible =  [1, 2, 3,
				 4, 5, 6,
				 7, 8, 9 ]

var column = -1
var row = -1
var index = -1
var subtile = Vector2(-1, -1)

func update_possible_indicators():
	var txt = "-"
	if len(possible) > 1:
		txt = "|%s|" % len(possible)
	elif len(possible) == 1:
		txt = possible[0]
	text = str(txt)
	var s = lerp(0.0, 3.0, ((len(possible)-1.0)/8.0) )
	$Sprite.scale = Vector2( s, s )
#	$AnimationPlayer.stop()
func reset():
	text = ""
	possible =  [1, 2, 3, 4, 5, 6, 7, 8, 9]
	modulate = Color(1, 1, 1, 1)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func lateReady():
	parent = get_parent()
	supervisor = parent.parent.get_parent()
	ind = parent.get_children().find(self)
	parent_ind = parent.ind
	pos = Vector2(parent_ind, ind)
	
									 #Local row
	row = ( int(pos.x / 3) * 3 ) + ( int(pos.y / 3) )
										#Local row
	column = ( int(pos.x) % 3 * 3 ) + ( int(pos.y) % 3 )
	
	subtile = Vector2( int(row / 3), int(column / 3))
	index = (row * 9) + column
	
	# Finally, register the tile
	supervisor.addTile(self)
	
var lateRDone = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not lateRDone:
		lateReady()
		lateRDone = true


func _on_1_pressed():
	print("Pressed %s,%s" % [parent_ind+1, ind+1])
	supervisor.askValue(self)
