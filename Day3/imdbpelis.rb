require 'imdb'
require 'pry'

# class Film
# 	attr_accessor :title, :rating
# 	def initialize
# 		@title = ""#title
# 		@rating = 0#rating
# 	end

# 	def 

# end

# class Search
# 	attr_accessor :films
# 	def initialize
# 		@films = []
# 	end
# end

# film1 = Film.new(search = Imdb::Search.new('Ghostbusters').movies[0].title)
# print film1.title

# search1 = Search.new

arrayFilms = ["Ghostbusters",
"Die Hard",
"The Godfather",
"Home alone",
"Star trek, the new generation",
"The night of the living dead",
"Titanic"]

titles = []
rates = []

arrayFilms.each do |movie|
	rating = Imdb::Search.new(movie).movies[0].rating
	if rating != nil
		titles.push(search = Imdb::Search.new(movie).movies[0].title)
		rates.push(search = Imdb::Search.new(movie).movies[0].rating)
	end
end

sContador = 0
while sContador <= 6
	puts "Titulo: #{titles[sContador]} y Rate: #{rates[sContador]}"
	sContador += 1
end

# puts "#{titles[2]}: #{rates[2]}"
# rates.each do |rat|
# 	puts rat
# end

# titles.each do |fil|
# 	puts |fil|
# end

