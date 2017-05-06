require 'pry'
class Game
	attr_reader :player
	def initialize
		@rooms = [] 
		@player = Player.new
	end

	def ask_name
		puts "enter your name"
		name = gets.chomp
		@player.name = name
		puts @player.name
	end
end

class Room
	def initialize (position,description)
		
	end
end

class Player
	attr_accessor :name, :position
	def initialize
		@name = ""
		@position = [0,0]
	end
end

room1 = Room.new([0,0], "Empieza el juego")
game1 = Game.new
game1.ask_name
binding.pry