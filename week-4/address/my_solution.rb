# Format an Address
puts "What is your street address?"
	street = gets.chomp
	puts "What is your city?"
	city = gets.chomp
	puts "What is your state?"
	state = gets.chomp
	puts "What is your zip code?"
	zip = gets.chomp.to_s

def make_address(street, city, state, zip)
	return "You live at " + street + ", in the beautiful city of " + city + ", " + state + ". Your zip is " + zip + "."
end
# I worked on this challenge [by myself].


# Your Solution Below