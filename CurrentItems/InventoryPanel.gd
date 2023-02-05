extends Control

# Declare member variables here. Examples:
var ingredientList = []
export var maxIngredients = 10
var ingredientsToRemove = []

var ingredientCard = preload("res://CurrentItems/IngredientCard.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	
	#if ingredientsList is empty, add a random ingredient
	#if len(ingredientList) == 0:
	ingredientList.append(InventoryIngredient.new("first",4))
	ingredientList.append(InventoryIngredient.new("second",3))
	ingredientList.append(InventoryIngredient.new("third",4))
	ingredientList.append(InventoryIngredient.new("fourth",4))
	ingredientList.append(InventoryIngredient.new("fifth",3))
	ingredientList.append(InventoryIngredient.new("sixth",4))
	ingredientList.append(InventoryIngredient.new("seventh",4))
	ingredientList.append(InventoryIngredient.new("eighth",3))
	ingredientList.append(InventoryIngredient.new("nineth",4))
	#spawn current ingredient list
	addIngredients(ingredientList)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#This function removes the first item in the ingredientsList array.
func pushIngredients():
	ingredientList.pop_front()
	#if you want to return this edit it here

#Add ingredients to the list and remove the first item if the list is too long
func addIngredients(ingredients):
	for i in range(len(ingredients)):
		#var ingredientToAdd = InventoryIngredient.new(ingredients[i].name, ingredients[i].expiration, ingredients[i].img)
		addIngredient(ingredients[i])
		

func addIngredient(ingredient):
	ingredientList.append(ingredient)
	if len(ingredientList) > maxIngredients:
		ingredientList.pop_front()
	spawnIngredientButton(ingredient)

#This function increments the expiration of the ingredients in the list and removes them if they are too old
func incrementExpiration():
	for i in range(len(ingredientList)):
		ingredientList[i].expirationIncrement()
		
		#if the ingredient is too old, add it to the list of ingredients to remove
		if ingredientList[i].expiration <= 0:
			ingredientsToRemove.append(ingredientList[i])
	
	#remove the ingredients from the list
	if ingredientsToRemove.size() > 0:
		for i in range(len(ingredientsToRemove)):
			ingredientList.ingredientsToRemove[i].queue_free()
			
#Generate a button for an ingredient
func generateIngredientButton(ingredient):
	var card = ingredientCard.instance()
	get_node("InventoryHbox").add_child(card)
	card.addCardData(ingredient.name, ingredient.img, ingredient.expiration)
	return card
	
func spawnIngredientButton(ingredient):
	var card = generateIngredientButton(ingredient)
	card.rect_min_size.x = 100.0
	
