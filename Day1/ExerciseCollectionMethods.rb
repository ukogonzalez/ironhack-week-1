class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize (name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Malaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49)
]

# [1]print each home
# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# [2]print number of homes
# for number in 0..4
# 	puts number
# end

# [3]print homes[0,1,2,3...]
# for pos in 0..4
# 	puts homes[pos].name
# end

# print like [1] and [3] 
# homes.each do |hm|
# 	puts hm.name
# end

# homes.each { |hm|
# 	puts hm.name
# }

# print each element of the object
# hm = Home.new("Nizar's place", "San Juan", 2, 42)
# puts hm.name

# print with do, is like without {}
# homes.each do |hm|
# 	puts hm.name
# end

homes.each do |hm|
	puts "#{hm.name} in #{hm.city}"
	puts "Price: $#{hm.price} a night"

end


# cities = []

# homes.each do |hm|
# 	cities.push(hm.city)
# end

# puts cities


# cities = homes.map do |hm|
# 	hm.city
# end

# puts cities

# cities = homes.map do |hm|
# 	hm.city
# end

# puts homes

# cities = homes.map do |hm|
# 	puts hm.city
# end

# bad = homes.map do |hm|
# 	puts hm.name
# end
# 	puts bad

prices = homes.map do |hm|
	hm.price
end

total_precio = 0
prices.each do |precio|
	total_precio = precio + total_precio
end

contadorCasas = homes.count
puts contadorCasas
precioAverage = total_precio / contadorCasas
puts precioAverage

# total_capacities = 0.0
# homes.each do |hm|
# 	total_capacities = total_capacities + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

# total_capacities = homes.reduce(0.0) do |sum, hm|
# 	sum + hm.capacity
# end

# puts "The average capacity is:"
# puts total_capacities / homes.length

capacities = homes.map do |hm|
	hm.capacity
end

total_capacities = 0
capacities.each do |capacities|
	total_capacities = capacities + total_capacities
end

puts total_capacities














