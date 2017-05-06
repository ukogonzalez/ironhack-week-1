class Game
	def initialize()
		
	end
end

class Player
	def initialize(name)
		@name = name
		@position = [0,0]
	end
	def movement(moveN,moveS,moveW,moveE)
		@moveN = moveN
		@moveS = moveS
		@moveW = moveW
		@moveE = moveE
	end

	def move_nord
		@position[0] += 1
	end
end

