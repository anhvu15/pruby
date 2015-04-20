module FlashCard 
	class Application
		attr_reader :decks
		def initialize
			@decks = []
		end

		def << (deck)
			@decks << deck
		end

		def play
			puts "Pick a deck:"
			display_decks
			deck = get_deck
			deck.play
		end

		def display_decks
			@decks.each do |d|
				puts "Deck name: #{d.name}"
			end
		end

		def get_deck
			name = gets.chomp.downcase
			@decks.detect {|d| d.name.downcase == name}
		end

	end
	class Card
		attr_reader :font,:back
		def initialize(font,back)
			@font = font
			@back = back
		end
		def correct?(guess)
			@back == guess

		end
		def play
			print "#{font} >> "
			guess = gets.chomp
			if correct?(guess)
				puts "Correct"
			else
				puts "Incorrect"
			end
		end
	end
	class MultipleAnswersCard < Card
		# override correct function
		def correct?(guess)
			answers = back.split(',')
			answers.any?{|a| a == guess}
		end

	end

	class Deck
		attr_reader :name,:cards
		def initialize(name)
			@name = name
			@cards = []
		end
		def << (card)
			@cards << card
		end
		def shuffle
			@cards.shuffle!
		end
		def play
			puts "playing the deck #{@name}"
			shuffle
			@cards.each(&:play)
		end
	end
end

card1 = FlashCard::Card.new('cat','meo')
card2 = FlashCard::MultipleAnswersCard.new('pig','heo,lon,xe,cong')
card3 = FlashCard::Card.new('dog','cho')

card4 = FlashCard::Card.new('cat','neko')
card5 = FlashCard::Card.new('dog','inu')
card6 = FlashCard::Card.new('snake','hebi')
#Initialize new deck
deck1 = FlashCard::Deck.new('Vietnamese')
deck1 << card1 << card2 << card3
deck1.shuffle
deck2 = FlashCard::Deck.new('Japanese')
deck2 << card4 << card5 << card6

app = FlashCard::Application.new
app << deck1 << deck2
app.play


