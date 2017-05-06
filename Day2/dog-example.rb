class Dog

	def initialize (name, breed, sound = "Woof")
		@name = name
		@breed = breed
		@sound = sound
		@@number_of_dogs ||= 0
		@@number_of_dogs += 1 
	end

	def bark
		puts @sound
	end

	def track
		puts "Sniff"
	end

	def self.number_of_dogs
		puts @@number_of_dogs
	end
end


class Hound < Dog

	def initialize (name, breed, sound, animal)
		super(name, breed, sound)
		@animal = animal
	end

	def roll
		puts "Roll... Roll... Roll..."
	end

	def track
		puts "Sniffff... Sniffff... Sniffff..."
		super
	end
end

class PetDog < Dog
	def initialize (name, breed, sound, owner)
		super(name, breed, sound)
		@owner = owner
	end

	def play_and_fetch (toy)
		puts "fetch #{toy}"
	end
end

my_dog = Dog.new("Lolo", "Bod")
my_dog.track

#Dog.number_of_dogs

domestical_dog = PetDog.new("Rastreator","Hound", "Wooooof!", "Manolete")

domestical_dog.play_and_fetch ("ball")