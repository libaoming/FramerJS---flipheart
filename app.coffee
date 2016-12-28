# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Vinci"
	twitter: ""
	description: ""


Framer.Defaults.Animation = {
	time: 0.4
	curve: "linear"
}

_1 = new Layer
	width: 60
	x: Align.center(30)
	y: Align.center()
	height: 60
	image: "images/1.png"


_2 = new Layer
	width: 60
	height: 60
	x: Align.center(-30)
	y: Align.center()
	image: "images/2.png"

flipheart = new Layer
	width: 60
	height: 60
	x: Align.center(30)
	y: Align.center()
	originX: 0
	image: "images/Oval.png"





# flipheart.states.add 
# 	middle:
# 		rotationY: -90
# 		brightness:140
# 	over:
# 		rotationY: -180
# 		brightness: 93
# 
# hand = () ->
# # 	flipheart.stateSwitch("middle")
# # 	Utils.delay 0.4, ->
# # 		flipheart.stateSwitch("over")
# # 	Utils.delay 0.9, ->
# # 		flipheart.states.switchInstant("default")
# 	flipheart.stateCycle()
# 
# Utils.interval 1,->
# 	hand()

flipheart.states.a =
	rotation: 90

flipheart.states.b =
	rotation: 180
	
	
	
Utils.interval 2, ->
	flipheart.stateSwitch("a")
	Utils.delay 0.4, ->
		flipheart.stateSwitch("b")
	Utils.delay 0.9,->
		flipheart.states.switchInstant("default")



