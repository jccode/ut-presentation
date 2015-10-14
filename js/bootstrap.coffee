

# start

dx = 1500
dy = 1000
dz = 500
delta_x = 500

steps =
	"welcome":
		x: -2*dx
		y: -dy
		scale: 2
	"what":
		x: -dx
		y: -dy
		scale: 2
	"outline":
		x: -2*dx
		y: 0
		rotate: -90
		scale: 4

	"principle":
		x: -2*dx
		y: 2*dy
		scale: 4
		
	"project_struture":
		x: 0
		y: -dy
		scale: 1
	"how_to_run":
		x: dx
		y: -dy
		scale: 2
	"run_cmd":
		x: dx + delta_x
		y: -dy
		z: -dz
	"run_cmd_release":
		x: dx + 2 * delta_x
		y: -dy
		z: -2 * dz
	"run_cmd_dev":
		x: dx + 3 * delta_x
		y: -dy
		z: -3 * dz
	"jasmine":
		x: 0
		y: 0
		scale: 3
	"jasmine_code_structure":
		x: dx
		y: 0
		
	"ex1":
		x: 3*dx
		y: -dy
	"ex1_q":
		x: 3*dx 
		y: -dy
		z: dz
		scale: 3
	"ex1_ajax_test":
		x: 3*dx
		y: 0
	"ex1_dom_test":
		x: 3*dx
		y: dy
		
	"pratice-intro":
		x: 0
		y: dy
	"pratice-intro2":
		x: 0 + delta_x
		y: dy
	"pratice-1":
		x: 2 * delta_x
		y: dy
	"how-test-time":
		x: 2*dx
		y: dy
		z: dz
		scale: 3
	"jasmine-clock":
		x: 2*dx + delta_x
		y: dy
	"pratice-2":
		x: 3*dx
		y: dy
		
	"case_study":
		x: 0
		y: 2*dy
		scale: 3
	"ex2_test":
		x: dx
		y: 2*dy
		
	"question":
		x: 4*dx
		y: dy
	"thx":
		x: 4*dx
		y: dy
		rotate: 90
		scale: 6
	"overview":
		x: dx
		y: dy
		scale: 9

setAttrs = (id, attrs)->
	el = document.getElementById id
	el.setAttribute "data-"+key, value for key, value of attrs


# set steps
setAttrs id, attrs  for id, attrs of steps

# init
impress().init()
hljs.initHighlightingOnLoad();
