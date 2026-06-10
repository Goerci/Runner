extends Node2D # Ou Area2D, dependendo de como você criou o obstáculo

var velocidade: int = 400
 # Busca o nó principal do jogo para sincronizar a velocidade atual	# Se o seu script principal estiver na raiz da cena atual:

func _process(delta: float) -> void:
	# Desloca o obstáculo para a esquerda da mesma forma que o chão
	position.x -= velocidade * delta
	
	# Opcional: Destrói o obstáculo se ele sair muito da tela para não pesar o jogo
	if position.x < -200:
		queue_free()
