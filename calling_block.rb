def get_name(prompt)
	print "#{prompt} :"
	name = gets.chomp
	yield name
	name
end

my_name = get_name("Enter your name") do |name|
	puts "That's a cool name, #{name}" 
end
