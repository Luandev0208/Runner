extends Area2D

@export var velocidade = 400

func _process(delta):
	position.x -= velocidade * delta * 2

	if position.x < -1152:
		queue_free()
