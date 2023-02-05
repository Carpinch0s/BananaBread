extends Node

export(PackedScene) var finishedDishScene

# Called when the node enters the scene tree for the first time.
func _ready():
	var rowData0 = $RecipeManager.generateNewIngredients(3)
	$UpcomingIngredientPanel.addIngredients(rowData0)
	
	var rowData1 = $RecipeManager.generateNewIngredients(3)
	$UpcomingIngredientPanel.addIngredients(rowData1)
	
	var rowData2 = $RecipeManager.generateNewIngredients(3)
	$UpcomingIngredientPanel.addIngredients(rowData2)
	
	var inventoryData = $RecipeManager.generateNewIngredients(3)
	$InventoryPanel.addIngredients(inventoryData)
	
	
func _on_CookwarePressed(cookwareType):
	var string = "clicked on " + cookwareType
	
	# temp ingredients
	var ingredients = ["Banana", "Flour", "Egg", "Sugar"]
	var finishedDishData = $RecipeManager.getFinishedDish(cookwareType, ingredients)
	if finishedDishData.name == "Invalid":
		return
	
	var finishedDish = finishedDishScene.instance()
	finishedDish.name = finishedDishData.name
	finishedDish.position = $FinishedDishSpawnLocation.position
	finishedDish.foodImage = finishedDishData.sprite
	
	add_child(finishedDish)
	
