require "defines"

white = {r = 1, g = 1, b = 1}
yellow = {r = 1, g = 1, b = 0}
init = 0

game.onevent(defines.events.onplayercreated, function(event)

	game.player.gui.top.add({type="frame", name="sb_frame", caption="",direction="horizontal", style="sb_frame_style"})
	game.player.gui.top.sb_frame.add({type = "button", name="speedbutton05", caption="x0.5", fontcolor = white, style="sb_button_style"})
	game.player.gui.top.sb_frame.add({type = "button", name="speedbutton1", caption="x1", fontcolor = white, style="sb_button_style"})
	game.player.gui.top.sb_frame.add({type = "button", name="speedbutton2", caption="x2", fontcolor = white, style="sb_button_style"})
	game.player.gui.top.sb_frame.add({type = "button", name="speedbutton5", caption="x5", fontcolor = white, style="sb_button_style"})
	game.player.gui.top.sb_frame.add({type = "button", name="speedbutton10", caption="x10", fontcolor = white, style="sb_button_style"})
	
	game.player.gui.top.sb_frame["speedbutton1"].style.fontcolor = yellow
end)
function all_white()
	game.player.gui.top.sb_frame["speedbutton05"].style.fontcolor = white
	game.player.gui.top.sb_frame["speedbutton1"].style.fontcolor = white
	game.player.gui.top.sb_frame["speedbutton2"].style.fontcolor = white
	game.player.gui.top.sb_frame["speedbutton5"].style.fontcolor = white
	game.player.gui.top.sb_frame["speedbutton10"].style.fontcolor = white
end

game.onevent(defines.events.onguiclick, function(event)

	if event.element.name == "speedbutton05" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton05"].style.fontcolor = yellow
		game.speed = 0.5
	end
	
	if event.element.name == "speedbutton1" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton1"].style.fontcolor = yellow
		game.speed = 1
	end
	
	if event.element.name == "speedbutton2" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton2"].style.fontcolor = yellow
		game.speed = 2
	end
	
	if event.element.name == "speedbutton5" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton5"].style.fontcolor = yellow
		game.speed = 5
	end
	
	if event.element.name == "speedbutton10" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton10"].style.fontcolor = yellow
		game.speed = 10
	end
    
end)