require 'minitest/autorun'
require_relative 'movie'
class MovieTest < MiniTest::Unit::TestCase
	def setup
		@movie = Movie.new({
			title: "Star Wars Episode",
			director: "George Lucas",
			genre: "Science Fiction",
			release_date: "1980-05-21",
			rotten_tomatoes: "96",}
			)		
	end

	def test_title
		assert_equal 'Star Wars Episode',@movie.title
	end
	def test_director
		assert_equal 'George Lucas',@movie.director
	end
	def test_genre
		assert_equal 'Science Fiction',@movie.genre
	end
	def test_rotten_tomatoes
		assert_equal 96,@movie.rotten_tomatoes
	end
	def test_release_date
		assert_equal Date.new(1980,05,21),@movie.release_date
	end
	
end