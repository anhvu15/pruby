open("beans.txt", "w") do |file|  
	file.puts "lima beans"
	file.puts "pinto beans"
	file.puts "human beans"
	file.puts "viet beans"
end

open("beans.txt","r") do |file|
	file.each do |line|
		puts "A line from the file: #{line}"
	end
end
$stdin.each { |l| puts l }