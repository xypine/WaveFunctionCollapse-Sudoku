extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tiles = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addTile(tile: entry):
	print("Registered %s" % (tile.pos + Vector2(1, 1)) )

func askValue(tile: entry):
	$Question.reset()
	$Question.show()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
