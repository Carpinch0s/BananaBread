extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var rowData0 = $RecipeManager.generateNewRow()
	$UpcomingIngredientPanel.addRow(rowData0)
	
	var rowData1 = $RecipeManager.generateNewRow()
	$UpcomingIngredientPanel.addRow(rowData1)
	
	var rowData3 = $RecipeManager.generateNewRow()
	$UpcomingIngredientPanel.addRow(rowData2)
	
	var inventoryData = $RecipeManager.generateNewRow()
	$InventoryPanel.addIngredients(inventoryData)
	
	
	
