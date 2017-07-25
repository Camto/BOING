function love.draw() -- Render the game.
	
	love.graphics.setColor(255, 255, 255)
	love.graphics.rectangle("fill", 0, 0, 400, 400)
	
	player:draw()
	
	for index, value in ipairs(bouncers) do
		value:draw()
	end
	
	love.graphics.setColor(24, 131, 215)
	love.graphics.rectangle("line", 0, 0, 400, 400)
	
end