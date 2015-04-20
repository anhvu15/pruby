require_relative 'movie'
require_relative 'reviewer.rb'
class Playlist

  attr_reader :name
  
  def initialize(name)
    @name = name
    @movies = []
  end
  
  def add_movie(a_movie)
    @movies << a_movie
  end

  def roll_die
    rand(1..6)
  end
  
  def play
    puts "#{@name}'s playlist:"
    puts @movies
    
    @movies.each do |movie|
      Reviewer.review(movie)
      puts movie
    end
  end
end

