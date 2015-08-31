require "defines"

white = {r = 1, g = 1, b = 1}
yellow = {r = 1, g = 1, b = 0}
button_speeds = {["speedbutton05"] = 0.5, ["speedbutton1"] = 1, ["speedbutton2"] = 2, ["speedbutton4"] = 4, ["speedbutton8"] = 8}
default_speed = "speedbutton1"

function all_white()
	for button_name, button_speed in pairs(button_speeds) do
		game.player.gui.top.sb_frame[button_name].style.font_color = white
	end
end

game.on_event(defines.events.on_tick, function(event)
	if game.player.gui.top.sb_frame == nil then
		game.player.gui.top.add({type = "frame", name = "sb_frame", caption = "", direction = "horizontal", style = "sb_frame_style"})
		for button_name, button_speed in pairs(button_speeds) do
			game.player.gui.top.sb_frame.add({type = "button", name = button_name, caption = "x" .. button_speed, font_color = white, style = "sb_button_style"})
		end
		game.player.gui.top.sb_frame[default_speed].style.font_color = yellow
		game.speed = button_speeds[default_speed]
	end
end)

game.on_event(defines.events.on_gui_click, function(event)
	for button_name, button_speed in pairs(button_speeds) do
		if event.element.name == button_name then
			all_white()
			game.player.gui.top.sb_frame[button_name].style.font_color = yellow
			game.speed = button_speed
		end
	end
end)
