#p arr[0][5][:secret][:unlock][1]

# arr = [
# 	[0,1,2,3,4{
# 				secret:
# 	{unlock: [0,olaqase]
# 		}}]
# ]

# puts arr[0][5][:secret][:unlock][1]

# class CarDealer
# 	def initialize(cars)
# 	@cars = cars
# 	end
# end

# cars = CarDealer.new[
# 	Ford:["Mustang", "Fiesta"]
# 	Honda:["Civic", "CR-V"]
# 	]

# puts cars[Ford:][1]

class CarDealer
	def initialize(inventory= {})
		@inventory = inventory
	end

	def cars(brand)
		@inventory[brand.capitalize.to_sym]
	end

	def add_car(brand, model)
		@inventory[brand.capitalize.to_sym] ||= []
		@inventory[brand.capitalize.to_sym].push(model)
	end

	def print_inventory
		@inventory.each do |k,v|
		print k.to_s + ": "
		puts v.join(",")
	end
	end
end

concesionario = CarDealer.new({
	Ford: ["Fiesta", "Mustang"],
	Honda: ["Civic", "CR-V"]
	})

puts "Introduce una marca"
brand = gets.chomp
puts concesionario.cars(brand)
concesionario.add_car("ford", "Focus")
concesionario.add_car("Peugeot", "206")
concesionario.print_inventory





