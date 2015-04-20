require 'csv'
require_relative 'movie'
#<CSV::Row title:"Star Wars Episode V: The Empire Strikes Back" release_date:"1980-05-21" director:"George Lucas" genre:"Science Fiction" rotten_tomatoes:"96">
movies = CSV.read('movies.csv',headers: true,header_converters: :symbol)
movie_list = movies.map{ |row| Movie.new(row)}
movie_list_with_rotten = movie_list.select{|m| m.rotten_tomatoes >0}
total_rotten_tomatoes = movie_list_with_rotten.map{|m| m.rotten_tomatoes}.reduce(0.0,:+)
average_rotten_tomatoes = total_rotten_tomatoes / movie_list_with_rotten.size
puts "Average rotten tomatoes : #{average_rotten_tomatoes}"
# Big release during holiday ?

# count_by_month = {}
# movie_list.each do |m|
# 	month_name = m.release_date.strftime("%B")
# 	count_by_month[month_name] ||=0
# 	count_by_month[month_name] += 1
# end
# count_by_month.each do |key,value|
# 	puts "#{key}: #{value}"
# end


count_by_month = movie_list.group_by {|m| m.release_date.strftime("%B")}.map {|key,value| [key.to_s,value.size]}.sort_by { |m| m.last}.reverse
p count_by_month


