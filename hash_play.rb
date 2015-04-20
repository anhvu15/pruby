class Hash
	def delete_value(value)
		self.each do |k,v| 
			self.delete(k) if v == value
		end
	end
	def remove_hash(other_hash)
		self.each do |k,v|
			self.delete(k) if other_hash[k] == v
		end
	end
end
h = {'apple' => 'green', 'potato' => 'red', 'sun' => 'yellow',
     'katydid' => 'green' }
h.delete_value("green")
squares = { 1 => 1, 2 => 4, 3 => 9 }
doubles = { 1 => 2, 2 => 4, 3 => 6 }
squares.remove_hash(doubles)
#Wipe out the hash using swipe method
h = {}
1.upto(1000){|x| h[x]=x}
h.clear
p h


