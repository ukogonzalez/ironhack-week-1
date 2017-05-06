class User
	def initialize (user,password)
		@user = user
		@password = password
	end

	def login
		userlogin = nil
		while @user != userlogin
			puts "Enter a user ID"
			userlogin = gets.chomp
			
			if @user != userlogin
				puts "Wrong user ID, enter again"
			end
		end
		puts "Enter password"
		
		# passwordlogin = gets.chomp

		# 	if @password == passwordlogin
		# 		puts "Estas dentro!"
		# 	else
		# 		puts "Wrong password, try again"
		# 	end
	end

end

user1=User.new("Emilio","123456")
user1.login
