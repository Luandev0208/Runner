extends Area2D

@export var velocidade = 400

func _process(delta):
	position.x -= velocidade * delta * 2

	if position.x < -100:
		queue_free()

func _on_body_entered(body):
	if body.name == "Jogador":
		body.pontos += 1
		queue_free()
