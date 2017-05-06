require 'pry'
class Game
	def initialize
		@walker = Walker.new(5)
		@rooms = []
		@player = Player.new
	end


	def add_room(room)
		@rooms.push(room)
	end

	def ask_name
		puts "Enter name"
		name = gets.chomp
		@player.name = name
		puts "Lets play #{name}"
		@player.position[0,0]
		getweapon
	end

	def firstmov
		puts "welcome to the 5 kingdoms"
		puts "u are in the central, u can go to the nord, south, west, east"
		preguntar
	end

	def uareinnord
		puts "Welcome to the wall!"
		preguntar
	end

	def getweapon
		puts "hey mafrend" "i have a gift for u" "what u pref?" "sword, archer, arpon?"
		a = gets.chomp
		if a == "sword"
			puts "nice choise mafrend, get the sword of light, freak mode off"
		elsif a == "archer"
			puts "not bad mafrend, go to kill some 'flyer-animal'"
		elsif a == "arpon"
			puts "are u looking for fish?"
		end
	end

	def preguntar
		puts "where do u want to go? n, s, w, e?"
		a = gets.chomp
		if a == "n"
			@player.move_nord
			puts "moving to the nord"
			nordwalker
			nordlimit
		elsif a == "s"
			@player.move_south
			puts "moving to the south"
		elsif a == "w"
			@player.move_west
			puts "moving to the west"
		elsif a == "e"
			@player.move_east
			puts "moving to the east"
		end
	end

	def nordwalker
		puts "wait..."
		puts "a wild walker aparecio, kappa"
		puts "what can u do now?"
		a = gets.chomp
		if a == "call jon snow"
			puts "jon is coming"
			puts "jon can u help me?"
		elsif a == "use the sword"
			puts "nice choice! lets kill this fcking walker"
			@walker.hp -= 1
		end
			b = gets.chomp
			if b == "yes"
				puts "The King in the nord always help mafrend"
				puts "Uuuuuaaaaaaah zas plas was jas"
				puts "jon killed the walker"
			else b == "no"
				puts "i cant achieve this mafrend,sorry i have to go"
				puts "fuck u joon snooooow"
				puts "die b1tch"
			end
		# def nordlimit
		# 	puts "Welcome to the nord"
		# 	puts "what do u want do now?"
		# 	a = gets.chomp
		# 	if a == "move nord"
		# 		@player.move_nord
		# 	end
		# 	if @player.position == [0,2]
		# 		puts "are u sure? the walkers are behind the wall"
		# 		b = gets.chomp
		# 		if b == "yes"
		# 			puts "crossing the wall..."
		# 			puts "wait... what is that..."
		# 			puts "IS A WALKER!!RUN"
		# 			puts "die bitch,no one can cross the wall!!"
		# 		elsif b == "no"
		# 			puts "so...then what?"
		# 			c = gets.chomp
		# 			if c == "go back"
		# 				@player.position = [0,0]
		# 				if @player.position == [0,0]
		# 					puts "u are in the central kingdom"
		# 					preguntar
		# 				end
		# 			end
		# 		end
		# 	end
		 end
end

class Player
	attr_accessor :name, :position
	def initialize
		@name = ""
		@position = [0,0]
	end



	def move_nord
		@position[1] += 1
	end

	def move_south
		@position[1] -= 1
	end

	def move_east
		@position[0] += 1
	end

	def move_west
		@position[0] -= 1
	end
end

class Walker
	def initialize(hp)
		@hp = hp
	end
end


class Room
	attr_reader :position
	def initialize(position)
		@position = position
	end
end


roomC = Room.new([0,0])
roomN = Room.new([0,1])
roomS = Room.new([0,-1])
roomE = Room.new([1,0])
roomW = Room.new([0,-1])
#game_start
game1 = Game.new
game1.add_room(roomC)
game1.add_room(roomN)
game1.add_room(roomS)
game1.add_room(roomE)
game1.add_room(roomW)
game1.ask_name
game1.firstmov






#player
player1 = Player.new
