extends Node2D


const OBSTACULO_CENA = preload("res://obstaculo.tscn")
var tempo_decorrido: float = 0.0

func _process(delta: float) -> void:
	
	tempo_decorrido += delta
	
	
	if tempo_decorrido >= 2.0:
		gerar_obstaculo()
		tempo_decorrido = 0.0

func gerar_obstaculo() -> void:
	
	var novo_obstaculo = OBSTACULO_CENA.instantiate()
	novo_obstaculo.position = Vector2(400,575) 
	add_child(novo_obstaculo)
