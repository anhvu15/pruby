# l = lambda {"do nothing"}
# puts l.call

# t = lambda do |string|
# 	if string == "try"
# 		return "There is no such thing"
# 	else
# 		return "Do or do not"
# 	end
# end

# puts t.call("try")

# addition = lambda { |a,b| a + b}
# subtraction = lambda {|a,b| a - b}
# multiplicaiton = lambda {|a,b| a*b}
# division = lambda {|a,b| a/b}
# Modulus = lambda {|a,b| a % b}
# puts addition.call(2,3)
# puts subtraction.call(3,2)
# puts multiplicaiton.call(4,5)
# puts division.call(8,4)
# puts Modulus.call(4,3)
short = ->(a,b) { a +b}

puts short.call(1,2)


































