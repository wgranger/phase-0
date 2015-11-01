=begin
======== Release 1: Pseudocode ==========
Input: An array containing a list of names as a string
Output: A hash containing each name from the original array as a key and a
group number as a value.
	
Pseudocode:
DEFINE a method that takes "people" as an argument
Create an empty hash titled "groups"
IF "people" length is <= 5 THEN all people receive hash value of one
Otherwise, begin to split the array into groups of four with hash values
	Collect the remainding number of students after split
	IF the remainder students is <= the number of hash values (groups)
	Begin to add a student from the remainder group into each group
	IF remainder is greater than number of groups
	THEN remainder is a group alone with a new hash value
End of program

=end

#======== Release 2: Initial Solution ====

acct = [
"Syema Ailia", 
"Alan Alcesto", 
"Daniel Anderson", 
"James Artz", 
"Darius Atmar", 
"Brian Bensch", 
"Nicola Beuscher", 
"Kris Bies",
"Logan Bresnahan", 
"William Brinkert", 
"Scott Chou", 
"Bernice Anne Chua", 
"Abraham Clark", 
"Jon Clayton", 
"Kevin Corso", 
"Jacob Crofts",
"Amaar Fazlani", 
"Solomon Fernandez", 
"Edward Gemson", 
"Jamar Gibbs",
"Chris Gomes", 
"Will Granger", 
"Christopher M. Guard", 
"Ryan Ho",
"Igor Kazimirov",
"Walter Kerr",
"Karla King",
"Becky Lehmann",
"Malia Lehrer",
"Steve"
]

def acct_groups(people)
	if people.length <= 5
		return people
	else
		people = people.shuffle.each_slice(4).to_a
		if people.last.length <= people.length && people.last.length<4
		people[0]=people[0]+people.last
		people.pop
			if people[0].length > 5
				people[1] = people[1] << people.first[-1]
				people.first.pop[-1]
				if people[0].length >5
					people[2] = people[2] << people.first[-1]
					people.first.pop[-1]
				end
			end
		end
		p people
	end
end

#========= Release 4: Refactor =============

def acct_groups(people)
	if people.length <= 5
		return people
	else people = people.shuffle.each_slice(4).to_a
	 	if people.last.length <= 2
	 		people[0]=people[0] << people.last[-1]
	 		people.last.pop[-1]
	 		if people.last.length == 1
	 			people[1]=people[1] << people.last[-1]
	 			people.pop
	 		end
		end
	end
	p people
end

#========= Release 5: Driver Code ==========
acct_groups(acct)

#========= Release 6: Reflect ==============
=begin
What was the most interesting and most difficult part of this challenge?

The most interesting part of this challenge was trying out a number of methods
in the terminal to see what worked. It was nice to be able to tweak things
on Sublime just a bit and see how ruby would respond. I definitely achieved
the MVP; however, I could easily spend much more time on this challenge
to create a better program.

Do you feel you are improving in your ability to write pseudocode and 
break the problem down?

This is a two-way street. Although I am improving my ability to pseudocode,
I'm also noticing that my process is changing a bit once I actually begin
coding. It's interesting how learning a coding language is just like
learning a foreign language. For example, I feel like my pseudocode 
represents what I want to say and my actual code is what comes out of 
my mouth. I often have to rewrite what actually comes out of my mouth
because I don't know the correct way to write/speak the language.

Was your approach for automating this task a good solution? What could 
have made it even better?

Although I tried to refactor my problem, I really ended up with a completely 
different solution (albeit somewhat similar). I prefer my initial solution, 
but the code is a bit difficult to read. The output for the initial 
solution is a bit better. My refactored solution is written much more 
cleanly, but I didn't account for deleting the empty final array if that case 
arises.

What data structure did you decide to store the accountability groups in
and why?

I decided upon a hash when I was writing pseudocode, but I eventually
settled upon an array because I felt like the array would be easier to work 
with. Ideally, I would have stored each item in a hash with the hash value
representing the group number. If I had more time to work on this problem,
I would've taken the hash approach. However, I decided upon an array
so I could get my work done in a timely manner.

What did you learn in the process of refactoring your initial solution? 
Did you learn any new Ruby methods?

I researched a good bit of ruby methods while working through my initial 
solution. I'm beginning to notice what will and won't work with the language 
before I test code out in the terminal. For my purposes, refactoring
let me experiment some of the methods I initially used in more detail.

=end

