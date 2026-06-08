extends Node2D

# Carrega a cena do obstáculo na memória
const OBSTACULO_CENA = preload("res://obstaculo.tscn") # Ajuste o caminho para o seu arquivo .tscn

var tempo_decorrido: float = 0.0

func _process(delta: float) -> void:
	# Soma o delta para contar os segundos
	tempo_decorrido += delta
	
	# Se passar de 2 segundos, gera o obstáculo e reseta o timer
	if tempo_decorrido >= 2.0:
		gerar_obstaculo()
		tempo_decorrido = 0.0

func gerar_obstaculo() -> void:
	# 1. Instancia a cena do obstáculo
	var novo_obstaculo = OBSTACULO_CENA.instantiate()
	
	# 2. Configura a posição (X fora da tela na direita, Y acima do chão)
	# Ajuste o valor de Y (ex: 500) para alinhar perfeitamente com a altura do seu chão
	novo_obstaculo.position = Vector2(1250, 500) 
	
	# Passa a velocidade do script principal para o obstáculo se necessário
	if "velocidade" in get_parent():
		novo_obstaculo.velocidade = get_parent().velocidade
	
	# 3. Adiciona o nó na cena
	add_child(novo_obstaculo)
