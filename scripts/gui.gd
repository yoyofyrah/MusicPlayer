extends Control

var audio_stream

func _ready():
	pass

func _process(delta):
	pass
	
func _on_realm_pressed():
	if $AudioStreamPlayer.playing == false or audio_stream != preload("res://music/HeavenlyRealm.ogg"):
		audio_stream = preload("res://music/HeavenlyRealm.ogg")
		$AudioStreamPlayer.stream = audio_stream
		$AudioStreamPlayer.volume_db = 0
		$AudioStreamPlayer.play()


func _on_battle_pressed():
	if $AudioStreamPlayer.playing == false or audio_stream != preload("res://music/GeneralBattleTheme.ogg"):
		audio_stream = preload("res://music/GeneralBattleTheme.ogg")
		$AudioStreamPlayer.stream = audio_stream
		$AudioStreamPlayer.volume_db = -3.5
		$AudioStreamPlayer.play()
	
func _on_town_pressed():
	if $AudioStreamPlayer.playing == false or audio_stream != preload("res://music/StarterTown.ogg"):
		audio_stream = preload("res://music/StarterTown.ogg")
		$AudioStreamPlayer.stream = audio_stream
		$AudioStreamPlayer.volume_db = 0
		$AudioStreamPlayer.play()


func _on_cave_pressed():
	if $AudioStreamPlayer.playing == false or audio_stream != preload("res://music/StoneCave.ogg"):
		audio_stream = preload("res://music/StoneCave.ogg")
		$AudioStreamPlayer.stream = audio_stream
		$AudioStreamPlayer.volume_db = 0
		$AudioStreamPlayer.play()


func _on_hall_pressed():
	if $AudioStreamPlayer.playing == false or audio_stream != preload("res://music/HallOfTransference.ogg"):
		audio_stream = preload("res://music/HallOfTransference.ogg")
		$AudioStreamPlayer.stream = audio_stream
		$AudioStreamPlayer.volume_db = 0
		$AudioStreamPlayer.play()


func _on_stop_pressed():
	$AudioStreamPlayer.stop()
