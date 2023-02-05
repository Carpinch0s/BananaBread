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
		"sprite": load("res://Images/BananaBread.png")
	},

	{
		"name": "Bananas Foster",
		"ingredients": ["Banana", "Sugar"],
		"cookware": "Pan",
		"sprite": load("res://Images/BananasFoster.png")
	},
]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
func getFinishedDish(cookwareType, ingredients):
	for dish in dishOptions:
		if (dish.cookware == cookwareType):
			print(str(dish.ingredients))
			for dishIngredient in dish.ingredients:
				if !ingredients.has(dishIngredient):
					break
			return dish
			
	var dict = {"name": "Invalid"}
	return dict

func generateNewIngredients(count):
	var row = []
	var values = ingredients.values()
	for _i in range(count):
		var index = randi() % values.size()
		row.append(values[index])

	print("row = " + str(row))
	return row
