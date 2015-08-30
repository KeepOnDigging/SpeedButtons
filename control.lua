require "defines"

white = {r = 1, g = 1, b = 1}
yellow = {r = 1, g = 1, b = 0}

game.on_event(defines.events.on_tick, function(event)
	if game.player.gui.top.sb_frame == nil then
		game.player.gui.top.add({type="frame", name="sb_frame", caption="",direction="horizontal", style="sb_frame_style"})
		game.player.gui.top.sb_frame.add({type = "button", name="speedbutton05", caption="x0.5", font_color = white, style="sb_button_style"})
		game.player.gui.top.sb_frame.add({type = "button", name="speedbutton1", caption="x1", font_color = white, style="sb_button_style"})
		game.player.gui.top.sb_frame.add({type = "button", name="speedbutton2", caption="x2", font_color = white, style="sb_button_style"})
		game.player.gui.top.sb_frame.add({type = "button", name="speedbutton4", caption="x4", font_color = white, style="sb_button_style"})
		game.player.gui.top.sb_frame.add({type = "button", name="speedbutton8", caption="x8", font_color = white, style="sb_button_style"})
		game.player.gui.top.sb_frame["speedbutton1"].style.font_color = yellow
		game.speed = 1
	end
end)

function all_white()
	game.player.gui.top.sb_frame["speedbutton05"].style.font_color = white
	game.player.gui.top.sb_frame["speedbutton1"].style.font_color = white
	game.player.gui.top.sb_frame["speedbutton2"].style.font_color = white
	game.player.gui.top.sb_frame["speedbutton4"].style.font_color = white
	game.player.gui.top.sb_frame["speedbutton8"].style.font_color = white
end

game.on_event(defines.events.on_gui_click, function(event)

	if event.element.name == "speedbutton05" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton05"].style.font_color = yellow
		game.speed = 0.5
	end
	
	if event.element.name == "speedbutton1" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton1"].style.font_color = yellow
		game.speed = 1
	end
	
	if event.element.name == "speedbutton2" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton2"].style.font_color = yellow
		game.speed = 2
	end
	
	if event.element.name == "speedbutton4" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton4"].style.font_color = yellow
		game.speed = 4
	end
	
	if event.element.name == "speedbutton8" then
		all_white()
		game.player.gui.top.sb_frame["speedbutton8"].style.font_color = yellow
		game.speed = 8
	end
    
end)