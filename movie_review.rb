require 'csv'
require_relative 'movie_class'
#Read csv file
#Parse the data into a set of movies
#Find out how many movies I have in each genre
#Show a list of all title directed by George Lucas
movie_list = CSV.read("movies.csv", headers: true,skip_blanks: true, header_converters: :symbol)
movies = []
movie_list.each do |m|
	movies << Movie.new(m)
end
#movies.each do |m|
# 	name = m.genre
# 	movies_by_genre[name] ||= 0
# 	movies_by_genre[name] += 1
# end

#Using enumberable instead
movies_by_genre = movies.group_by {|m| m.genre}.map{|k,v| [k,v.size]}.sort_by{|s| s.last}.reverse
p movies_by_genre
movies_by_director = movies.select{|m| m.director = "George Lucas"}
p movies_by_director


