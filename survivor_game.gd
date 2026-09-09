extends Node2D


var survival_time = 0.0
var spawn_time = 2.0
var min_spawn_time = 0.5
var spawn_rate = .01

var kill_count = 0


func _process(delta):
	survival_time += delta
	
	var minutes = int(survival_time) / 60
	var seconds = int(survival_time) % 60
	
	%SurvivalTimer.text = "%02d:%02d" % [minutes, seconds]


func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	
	new_mob.killed.connect(on_mob_killed)
	
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	
func on_mob_killed():
	kill_count += 1	
	%KillCounter.text = "%d" % kill_count


func _on_timer_timeout():
	spawn_mob()
	
	var new_spawn_time = spawn_time - (survival_time * spawn_rate)
	
	%Timer.wait_time = max(new_spawn_time, min_spawn_time)


func _on_player_health_depleted() -> void:
	var minutes = int(survival_time) / 60
	var seconds = int(survival_time) % 60
	
	%SurvivalTimer.visible = false
	%KillCounter.visible = false
	
	%TimeSurvived.text =  "You Survived For: %02d:%02d" % [minutes, seconds]
	%MobsKilled.text = "Mobs Killed: %d" % kill_count
	
	%GameOver.visible = true
	get_tree().paused = true
