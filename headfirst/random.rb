#Written by : Anh Vu
print "Enter your name: "
name = gets.chomp
puts "Welcome, #{name} "
random_num = Random.rand(100) + 1
is_correct = false;
MAX = 10
attempts = 0
# until player get the correct answer or run out of tries
until is_correct || attempts == MAX
	puts "You have #{MAX - attempts} attempts" 	
	print "Enter the number: "
	guess = gets.chomp.to_i
	if guess == random_num
	 	attempts +=1
		is_correct = true
		puts "You got it!! the correct number is #{random_num}"
	 elsif guess > random_num 
	 	puts "Opps! your guess was HIGH"
		attempts += 1		
	elsif guess < random_num
		puts "Opps! your guess was LOW"
		attempts +=1				 	
	end 
end
unless is_correct
	puts "You failed! The correct number is #{random_num}."
end
