def get_name(prompt,&block)
	print "#{prompt} :"
	name = gets.chomp
	print  "Age: "
	age = gets.chomp.to_i
	if block_given?
		block.call(name,age)
		name
	else
		puts "There is no block"
	end
end

get_name("Enter your name") 
