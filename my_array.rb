class MyArray 
	attr_reader :array
	def initialize
		@array = []
	end
	def << item
		@array << item
	end

	def each(&block)
		index = 0
		while index < @array.length
			block.call(@array[index])
			index +=1
		end
		@array
	end
end

my_array = MyArray.new
my_array << 1
my_array << 2
my_array << 3

my_array.each{ |item| puts "item: #{item}" }