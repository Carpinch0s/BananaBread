extends Area2D

export(Texture) var foodImage

func _ready():
	$Control/Sprite.texture = foodImage
