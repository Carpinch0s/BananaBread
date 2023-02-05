extends Node

var ingredients = {
	"banana" : {
		"name": "Banana",
		"img": "res://Images/Banana.png",
		"expiration" : 2
	},
	
	"flour" : {
		"name": "Flour",
		"img": "res://Images/Flour.png",
		"expiration" : 7
	},
	
	"egg" : {
		"name": "Egg",
		"img": "res://Images/Egg.png",
		"expiration" : 4
	},
	
	"sugar" : {
		"name": "Sugar",
		"img": "res://Images/Sugar.png",
		"expiration" : 8
	},
}

var dishOptions = [
	{
		"name": "Banana Bread",
		"ingredients" : ["Banana", "Flour", "Egg", "Sugar"],
		"cookware": "OvenDish",
		"sprite": "temp.png"
	},

	{
		"name": "Banana Bread",
		"ingredients": ["Banana", "Flour", "Egg"],
		"cookware": "OvenDish",
		"sprite": "temp.png"
	},

	{
		"name": "Bananas Foster",
		"ingredients": ["Banana", "Sugar"],
		"cookware": "Pan",
		"sprite": "temp.png"
	},

	{
		"name": "Bananas Foster",
		"ingredients": ["Banana", "Sugar", "Milk"],
		"cookware": "Pan",
		"sprite": "temp.png"
	}
]

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
