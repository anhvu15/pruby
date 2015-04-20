class Monster
	attr_reader :name, :actions
	def initialize(name = "Annonymous")
		self.name = name
		@actions = { 
			screams: 0,
			scares: 0,
			runs: 0,
			hides: 0 }
	end

	def name=(value)
		raise 'Invalid name ' if value.strip.empty?
		@name = value
	end

	def say(&block)
		print "\n#{name} says ....."
		block.call
	end

	def scream(&block)
		actions[:screams] += 1
		print "#{name} screams!"
		yield
	end

	def scare(&block)
		actions[:scares] += 1
		print "#{name} scares you"
		yield
	end
	def run(&block)
		actions[:runs] += 1
		print "#{name} running to you"
		yield
	end
	def hide(&block)
		actions[:hides] += 1
		print "#{name} hiding from you"
		yield self if block_given?
	end
end

monster = Monster.new("Fluffy")
monster.say{puts "Welcome to my home"}
monster.scream do
	puts "BOOOOO"
end
monster.scare do
	puts "Go away"
end

monster.run do
	puts "I will come after you"
end

monster.hide do |m|
	puts "I will find you"
	puts m.inspect
end
puts monster.actions
