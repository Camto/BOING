function love.load() -- It should be called init but whatever. It won't do any harm.
	
	local _, _, flags = love.window.getMode()
	local w, h = love.window.getDesktopDimensions(flags.display)
	love.window.setPosition(w / 2 - 200, h / 2 - 200)
	
end