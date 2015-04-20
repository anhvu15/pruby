# puts "First line\nSecond line\nThird line\n\t Indented Line"
# puts "\"It's okey,\" he said."
# puts "One backlash: \\"

unless true
	puts "It will never execute."
end

unless false
	puts "It will always be executed."
end

#Ruby while loop
number = 1
puts "Using while loop"
while number < 5
	puts number
	number += 1
end
number = 1

puts "Using until loop"
until number > 5
	puts number
	number += 1
end
