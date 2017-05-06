"Game
5 Rooms
Each room - one or more exit
Description for rooms and error.
Player can go N, E, S, W
Function and consequences"

class Game
	def initialize
	end
end

class Room
	def initialize(moveN,moveS,moveW,moveE)
		@moveN = moveN
		@moveS = moveS
		@moveW = moveW
		@moveE = moveE
	end
end

roomC = Room.new(true, true, true, true)
roomN = Room.new(false, true, false, false)
roomO = Room.new(false, false, false, true)
roomE = Room.new(false, false, true, false)
roomS = Room.new(true, fase, false, false)