extends Node

var ingredients = {
	"banana" : {
		"name": "Banana",
		"img": "banana.png",
		"expiration" : 2
	},
	
	"flour" : {
		"name": "Flour",
		"img": "flour.png",
		"expiration" : 7
	},
	
	"egg" : {
		"name": "Egg",
		"img": "egg.png",
		"expiration" : 4
	},
	
	"sugar" : {
		"name": "Sugar",
		"img": "sugar.png",
		"expiration" : 8
	},
}
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func generateNewIngredients(count):
	var row = []
	var values = ingredients.values()
	for _i in range(count):
		var index = randi() % values.size()
		row.append(values[index])

	return row

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
