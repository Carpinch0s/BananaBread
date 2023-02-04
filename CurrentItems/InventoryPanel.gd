extends Control

# Declare member variables here. Examples:
var ingredientList = []
var maxIngredients = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#This function removes the first item in the ingredientsList array.
func pushIngredients():
	ingredientList.pop_front()
	#if you want to return this edit it here

#Add ingredients to the list and remove the first item if the list is too long
func addIngredients(ingredients):
	ingredientList += ingredients
	#If ingredientList is greater than maxIngredients, remove the first x items from the list that is the length of the ingredients
	if len(ingredientList) > maxIngredients:
		for i in range(len(ingredients)):
			ingredientList.pop_front()
			
