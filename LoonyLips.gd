extends Control

var player_words = []
var prompts = ["a name", "a noun", "adverb","adjective"]
var welcome = "Welcome to Loony Lips. Add words as instructed."
var story = "Once upon a time, %s decided to go to %s for a meal. During the meal he ate %s and thus got a stomach ache and took an %s lemon for stomach relief."
onready var Playertext = $VBoxContainer/HBoxContainer/PlayerText
onready var Words = $VBoxContainer/Words

func _ready():
	Words.text = welcome
	check_player_words_length()
	
func _on_PlayerText_text_entered(new_text):
	add_to_player_words()

func _on_TextureButton_pressed():
	add_to_player_words()


func add_to_player_words():
	player_words.append(Playertext.text)
	Words.text = " "
	Playertext.clear()
	check_player_words_length()

func is_story_done():
	return player_words.size() == prompts.size()

func check_player_words_length():
	if is_story_done():
		tell_story()
	else:
		prompt_player()

func tell_story():
	Words.text = story % player_words

func prompt_player():
	Words.text += "May I have " + prompts[player_words.size()] + " please?"
