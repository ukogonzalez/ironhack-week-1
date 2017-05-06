class Dog

attr_reader :name, :breed, :sound
	def initialize (name, breed, sound)
		@name = name
		@breed = breed
		@sound = sound
	end

	def bark
		puts @sound
	end

	def berserk
		puts @sound + @sound + @sound
	end

end


class Hound < Dog

	def initialize (name, breed, sound, roll, track)
		super(name, breed, sound)
		@roll = roll
		@track = track
	end

	def roll
		puts @roll
	end

	def track
		puts @track
	end

end 


class PetDog < Hound

	def initialize (name, breed, sound, roll, track, owner)
		super(name, breed, sound, roll, track)
		@owner = owner
	end

	def owner
		puts @owner
	end


end

d1 = Dog.new("enzo", "amstaff", "Wooof!")
d2 = Dog.new("urko", "boxer", "Woooooooof!")
d1.bark
d2.berserk

h1 = Hound.new("bola", "labrador", "Wouf!", "Roll..Roll", "Sniff, sniff")
h2 = Hound.new("slevin", "runner", "Auf Auf", "Rolling", "Snifffffff")
h1.roll
h1.track
h2.roll
h2.track

p1 = PetDog.new("lukita", "beagle", "WOF!", "RollingDeep", "SniffClass", "Florentino")
puts p1.name
puts p1.breed
puts p1.sound
p1.roll
p1.track
p1.owner


