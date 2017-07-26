function love.update() -- UPDATE ALL THE OBJECTS!!!
	
	player:update()
	
	for count, bouncer in ipairs(bouncers) do
		bouncer:update()
	end
	
end