class User
	def initialize (user,password)
		@user = user
		@password = password
	end

	def login
		puts "Enter a user ID"
		userlogin = gets.chomp
			if @user == userlogin
				puts "Enter a password"
			else
				puts "Wrong user ID, enter again"
				ifwrong.push
			end
			
		passwordlogin = gets.chomp

			if @password == passwordlogin
				puts "Estas dentro!"
			else
				puts "Wrong password, try again"
			end
	end

	def ifwrong
		if @user == userlogin
			puts "Enter a password"
		else
			puts "Wrong user ID, enter again"
			userlogin = gets.chomp
		end
	end

end

user1=User.new("Emilio","123456")
user1.login
