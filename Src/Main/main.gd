extends Control

var counter: int = 0
var actual_level:int = 1

func step_in_actual_level():
	get_node("Level"+str(actual_level)).step()
	
