class Dog
	attr_reader :name, :age
	def name=(value)
		raise "Name can be blank" if value.empty?
		@name = value
	end

	def age=(value)
		raise "An age of #{value} is invalid" if value < 0
		@age = value
	end
	def talk
		puts "#{@name} says bark !"
	end
	def move(destination)
		puts "#{name} runs to #{destination}"
	end
	def report_age
		puts "#{name} is #{@age} years old"
	end
end
anonymous = Dog.new
anonymous.name = "Candy"
anonymous.age = 12
anonymous.talk
anonymous.move("table")
anonymous.report_age