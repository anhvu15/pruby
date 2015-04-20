require_relative 'Player'
describe Player do 
	before do
		@health = 100
		@player = Player.new("anh",100)
	end

	it "has a capitalize name" do
		expect(@player.name).to eq("Anh")
	end
	it "has an initial health" do
		expect(@player.health).to eq(100)
	end
	it "has a string representation" do
		expect(@player.to_s).to eq("I'm Anh with a health of 100 and a score of 103")
	end
	it "computes a score as the sum of its health and length of name" do
		@health = @player.health
		expect(@player.score).to eq(@health + @player.name.length)
	end
	it "increase health by 15 when w00ted" do
		@player.w00ted
		expect(@player.health). to eq(@health + 15)
	end
	it "Player decrease health by 10 when blammed" do
		puts "#{@player.health}"
		puts "#{@health}"
		@player.blamm

		expect(@player.health).to eq(@health - 10)
	end
end