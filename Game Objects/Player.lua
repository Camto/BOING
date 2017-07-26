require "Game Objects.Circle"

Player = Circle:new()
Player.xv = 0
Player.yv = 0

function Player:new()
	
	local player = Circle:new()
	
	setmetatable(player, self)
	self.__index = self
	
	return player
	
end

function Player:update()
	
	if love.keyboard.isDown("up", "w") then
		self.yv = self.yv - 1
	end
	if love.keyboard.isDown("left", "a") then
		self.xv = self.xv - 1
	end
	if love.keyboard.isDown("down", "s") then
		self.yv = self.yv + 1
	end
	if love.keyboard.isDown("right", "d") then
		self.xv = self.xv + 1
	end
	
	self.xv = self.xv * 0.9
	self.yv = self.yv * 0.9
	
	self.x = self.x + self.xv
	self.y = self.y + self.yv
	
	local collided = false
	
	for count, bouncer in ipairs(bouncers) do
		if self:collide(bouncer) then
			collided = true
			bouncer:BOING()
		end
	end
	
	if collided then
		
		self.x = self.x - self.xv
		self.y = self.y - self.yv
		
		self.xv = self.xv * -2
		self.yv = self.yv * -2
		
	end
	
end