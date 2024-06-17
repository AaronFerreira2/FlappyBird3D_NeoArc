extends CanvasLayer

var tempo = 0

func _ready():
	pass

func _on_Timer_timeout():
	tempo += 1
	$Label.text = str(tempo)
	if tempo > 20:
		$Label3.text = 'Level 2'
	if tempo > 40:
		$Label3.text = 'Level 3'
