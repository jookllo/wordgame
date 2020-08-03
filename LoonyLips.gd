extends Control

var person = ["Kijana", "Mjinga", "Nyumbani"]

func _ready():
	print("My name is " + person[1]+ " and I hope maisha iko "+ person[2])

	$VBoxContainer/Words.text = "Hii NI text BudAAAAAAA " + person[2]
	
