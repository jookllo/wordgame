extends Control

var person = ["Kijana", "Mjinga", "Nyumbani"]

func _ready():
	print("My name is " + person[1]+ " and I hope maisha iko "+ person[2])

	$VBoxContainer/Words.text = "Hii NI text BudAAAAAAA " + person[2]
	

func _on_PlayerText_text_entered(new_text):
	updatePlayerText(new_text)

func updatePlayerText (new_text):
	$VBoxContainer/Words.text = new_text
	$VBoxContainer/PlayerText.clear()
