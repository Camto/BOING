Circle = { -- Base circle
	
	x = 200, -- x position
	y = 200, -- y position
	r = 20, -- radius
	dr = 20, -- drawn radius
	rv = 0 -- grow/shrink speed (only for drawn radius)
	
}

function Circle:new(x, y, r)
	
	local circle = {}
	
	if x ~= nil then
		circle.x = x
	end
	
	if y ~= nil then
		circle.y = y
	end
	
	if r ~= nil then
		circle.r = r
		circle.dr = r
	end
	
	setmetatable(circle, self)
	self.__index = self
	
	return circle
	
end

function Circle:draw()
	
	love.graphics.setColor(0, 0, 0)
	love.graphics.circle("fill", self.x, self.y, self.dr, 3 * self.dr)
	
end

function Circle:collide(other)
	
	local xd = self.x - other.x
	local yd = self.y - other.y
	
	local distance = math.sqrt(xd * xd + yd * yd)
	
	if distance < self.r + other.r then
		return true
	else
		return false
	end
	
end

function Circle:BOING()
	self.rv = 50
end

function Circle:update_BOING()
	
	local next_x = -10 * (self.dr - self.r)
	local dampening = -0.6 * self.rv
	
	local acceleration = self.rv + (next_x + dampening) / 0.4
	self.rv = self.rv + acceleration / 10
	self.dr = self.dr + self.rv / 10
	
end