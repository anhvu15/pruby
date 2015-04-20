#summing array in the collection
array = [1,2,3,4,1,2,4,8,1,4,9,16]
temp = Hash.new(0)
array.each do |a| 
	temp[a] +=1
end
p temp.to_a.sort_by{|a| [a[1],a]}.
