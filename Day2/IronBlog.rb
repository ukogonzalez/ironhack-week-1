class Blog
	def initialize(posts,spposts)

	@posts = posts
	@spposts = spposts

	end

	def publish_front_page
		@posts.each do |post|
			puts post.publish_post
		end
		@spposts.each do |post|
			puts spposts.publish_post
		end

	end

	def sortbytime
		@spposts + @posts = @spposts + @posts.sort { |x,y| y.date <=> x.date }
		publish_front_page
	end

end

class Post
	attr_reader :date
	def initialize(title, date, text)

	@title = title
	@date = date
	@text = text

	end

	def publish_post

	puts @title
	puts @date
	puts "********"
	puts @text
	puts "--------"

	end

end

class SponsoredPost
	attr_reader :date
	def initialize(sptitle,spdate,sptext)
		@sptitle = sptitle
		@spdate = spdate
		@sptext = sptext
	end

	def publish_post

	puts "****** "+@sptitle+" ******"
	puts @spdate
	puts "********"
	puts @sptext
	puts "--------"
	end
end

post1 = Post.new("COLOSAL", "2016/10/25", "Sergio Ramos le da la decima al Madrid en el minuto93")
post2 = Post.new("BETISHAMPIONS", "2016/10/26", "El Betis acaba cuarto en La Liga y jugara la Champions la temporaoda que viene")
post3 = Post.new("LIDERATO", "2016/10/27", "El Barcelona pierde el liderato tras perder 5-0 en el Bernabeu")
sppost1 = SponsoredPost.new("DALENIÑO", "2016/10/28", "tusiquesabes")
sppost2 = SponsoredPost.new("OJUQCALO", "28016/10/24", "vamo a la praia")
my_posts = [post1,post2,post3]
my_spposts = [sppost1,sppost2]
sortbytime = [post1,post2,post3,sppost1,sppost2]
blog = Blog.new(sortbytime,sortbytime)
blog.sortbytime

# sortbytime.sort { |x,y| y.date <=> x.date }







