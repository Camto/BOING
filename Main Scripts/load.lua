require "Game Objects.Player"
require "Game Objects.Bouncer"

function love.load() -- It should be called init but whatever. It won't do any harm.
	
	-- Center the screen
	local _, _, flags = love.window.getMode()
	local w, h = love.window.getDesktopDimensions(flags.display)
	love.window.setPosition(w / 2 - 200, h / 2 - 200)
	
	-- Game Objects
	player = Player:new()
	bouncers = {Bouncer:new(200, 50, 60), Bouncer:new(50, 200, 60), Bouncer:new(200, 350, 60), Bouncer:new(350, 200, 60), Bouncer:new(200, -750, 800), Bouncer:new(-750, 200, 800), Bouncer:new(200, 1150, 800), Bouncer:new(1150, 200, 800)}
	
	bouncers[1]:BOING()
	
end