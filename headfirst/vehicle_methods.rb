def accelerate
	puts "Stepping in the gas"
	puts "Speeding up"
end

def sound_horn
	puts "Pressing the horn button"
	puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
	puts "Turning on #{brightness} headlights"
	puts "Watch out for beer"
end
def mileage(mile_driven,gas_used)
	return 0.0 if gas_used == 0
	mile_driven / gas_used
end

puts mileage(0,0)