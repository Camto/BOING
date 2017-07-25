require "Game Objects.Circle"

Bouncer = Circle:new()

function Bouncer:new(x, y, r)
	
	local bouncer = Circle:new(x, y, r)
	
	setmetatable(bouncer, self)
	self.__index = self
	
	return bouncer
	
end

function Bouncer:update()
	self:update_BOING()
end