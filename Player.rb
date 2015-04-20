class Player
	attr_reader	  :health,:name
	def initialize(name,health = 100)
		@name = name.capitalize
		@health = health
	end
	def name=(name)
		@name = name.capitalize
	end
	def score
		health + name.length
	end
	def blamm
		@health -= 10
		puts "#{name} got blammed"
	end
	def w00ted
		@health += 15
		puts "#{name} got w00ted"
	end
	def to_s
		"I'm #{name} with a health of #{health} and a score of #{score}"
	end
end
# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 125)
# players ||=[]
# players << player1 << player2 << player3
# players.each {|p| puts p}
# players.each {|p| puts p.health}
# players.each do|p|
# 	p.blamm
# 	p.w00ted
# 	p.w00ted
# 	puts p
# end
# players.delete(players.detect{|p| p.name == "curly".capitalize})
# puts "After remove"
# puts players
# players << Player.new("Shemp",90)
# puts "After add"
# puts players
