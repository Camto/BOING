function love.update() -- UPDATE ALL THE OBJECTS!!!
	
	for index, value in ipairs(bouncers) do
		value:update()
	end
	
end