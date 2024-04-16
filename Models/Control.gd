extends Control

func _ready():
	Common.ScoreSignal.connect(ScoreUpdate)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#$Label.text = str(Common.score)
	#pass
func ScoreUpdate(score):
	$Label.text = str(score)
