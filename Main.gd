extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


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
	
