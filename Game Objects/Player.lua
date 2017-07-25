require "Game Objects.Circle"

Player = Circle:new()

function Player:new()
	
	local player = Circle:new()
	
	setmetatable(player, self)
	self.__index = self
	
	return player
	
end

function Player:update()
	
end