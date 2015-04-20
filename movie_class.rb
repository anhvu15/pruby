require 'date'
class Movie
	attr_accessor :title,:genre,:director,:rotten_tomatoes,:release_date
	def initialize(csv_row)
		@title = csv_row[:title]
		@genre = csv_row[:genre]
		@director = csv_row[:director]
		@rotten_tomatoes = csv_row[:rotten_tomatoes].to_i
		@release_date = Date.parse(csv_row[:release_date])
	end
end