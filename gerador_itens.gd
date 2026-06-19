extends Node2D

var timer = 0

@export var cena_item = preload("res://item.tscn")

func _process(delta):
	timer += delta

	if timer >= 1.5:
		timer = 0

		var item = cena_item.instantiate()
		item.position = Vector2(1152, randi_range(330, 530))
		add_child(item)
