# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(average)
	if average >= 90
		return "A"
	elsif average >= 80 && average < 90
		return "B"
	elsif average >= 70 && average < 80
		return "C"
	elsif average >= 60 && average < 70
		return "D"
	else return "F"
	end
end