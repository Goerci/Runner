extends Node2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	
	# constantemente desloca o sprite pra esquerda
	$Fundo.position.x -= velocidade*delta*0.05
	$Fundo2.position.x -= velocidade*delta*0.05
	if $Fundo.position.x < -1152: # se o fundo sair de cena pela esquerda
		$Fundo.position.x = 1152  # coloque ele após a cena na direita
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	
	# constantemente desloca o sprite pra esquerda
	$Chao.position.x -= velocidade*delta*2
	$Chao2.position.x -= velocidade*delta*2
	if $Chao.position.x < -1152: # se o fundo sair de cena pela esquerda
		$Chao.position.x = 1152  # coloque ele após a cena na direita
	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
