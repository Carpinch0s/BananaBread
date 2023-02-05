extends Area2D

signal CookwarePressed(id)

export var Type = "Saucepan"
export var BoxColor = Color(100,100,0,1)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = Type
	$ColorRect.color = BoxColor

func _on_ColorRect_gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == BUTTON_LEFT:
			emit_signal('CookwarePressed', Type)
