class Car
	include Vehicle
	def initialize
	end
end

class MotorBike
	include Vehicle
	def initialize
	end
end

class Truck
	include Vehicle
	def initialize
	end
end

module Vehicle
	def has_wheels_make_noise
		@wheels = wheels
		@nosie = make_noise
	end
end

class Count_wheels
	def initialize
	end
end

class Make_noise
	def initialize
	end
end



