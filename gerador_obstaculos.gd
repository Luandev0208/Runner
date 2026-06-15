extends Node2D

@export var cena_obstaculos = preload("res://prefabs/obstaculo.tscn")

var posicoes = [
	[1152, 459], [1152, 459], [1152, 459], [1152, 459], [1152, 459], [1152, 459], [1152, 459], [1152, 459]
]

func _ready() -> void:
	for posicao in posicoes:
		var obstaculo = cena_obstaculos.instantiate();
		add_child(obstaculo);
		obstaculo.position.x = posicao[0]
		obstaculo.position.x = posicao[1]
