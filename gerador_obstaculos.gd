extends Node2D

var timer = 0

@export var cena_obstaculo = preload("res://prefabs/obstaculo.tscn")

func _ready():
	criar_obstaculo()

func _process(delta):
	timer += delta

	if timer >= 2:
		timer = 0
		criar_obstaculo()

func criar_obstaculo():
	var obstaculo = cena_obstaculo.instantiate()
	obstaculo.position = Vector2(1152, 480)
	add_child(obstaculo)
