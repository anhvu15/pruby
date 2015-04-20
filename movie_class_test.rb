require 'minitest/autorun'
require 'date'
require_relative 'movie_class'
class TestMovie < Minitest::Unit::TestCase
	def setup
		@movie = Movie.new({title:"Back To The Future", release_date:"1985-07-03", director:"Anh Vu", genre:"Science Fiction", rotten_tomatoes:"96"})
	end

	def test_title
		assert_equal "Back To The Future",@movie.title
	end
	def test_genre
		assert_equal "Science Fiction", @movie.genre
	end
	def test_director
		assert_equal "Anh Vu",@movie.director
	end
	def test_rotten_tomatoes
		assert_equal 96,@movie.rotten_tomatoes
	end
	def test_release_date
		assert_equal Date.new(1985,07,03),@movie.release_date
	end
end
