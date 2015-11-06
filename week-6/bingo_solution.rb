# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
CREATE bingo class
  DEF initialize
    attach instance variable to board
    @letter = array of Bingo
  END initialize
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  DEF call
    @column = random letter in "bingo" array
    @number = random number between (1-100)
    puts @column
    puts @number
  END call

# Check the called column for the number called.
  DEF check
    Iterate over each element in bingo_board |num|
    IF |num| is same as @number
      and IF |num| index is same as @column index
      replace |num| with X
    ELSE next element
    END IF statement
  END check

# Display the board to the console (prettily)
  DEF display
    puts bingo_board[0]
    puts bingo_board[1]
    puts bingo_board[2]
    puts bingo_board[3]
    puts bingo_board[4]
  END display

END bingo class
=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ["B", "I", "N", "G", "O"]
  end

  def call
    @column = @letter[rand(@letter.length) -1]
    @number = rand(1...100)
    p @column
    p @number
  end

   def check
      @bingo_board.each do |num|
        if num[@letter.index(@column)] == @number
          num[@letter.index(@column)] = 'X'
        end
      end
  end

  def display
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letter = ["B", "I", "N", "G", "O"]
  end

  def call
    @column = @letter.sample
    @number = rand(1...100)
  end

   def check
      @bingo_board.each do |num|
        if num[@letter.index(@column)] == @number
          num[@letter.index(@column)] = "X"
        end
      end
  end

  def display
    @bingo_board.each {|var| p var}
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

  new_game.call
  new_game.check
  new_game.call
  new_game.check
  new_game.call
  new_game.check
  new_game.call
  new_game.check
  new_game.display

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your 
pseudocoding style?

I was a bit thrown off by the pseudocoding since we were given a template
along with the code skelaton. I was able to put some of those requested
methods together into a single method. I feel like my pseudocoding is 
getting better, but I'm curious if it's getting too close to actual code.

What are the benefits of using a class for this challenge?

Using a class for this challenge will let you reuse instance variables
over and over again in a number of different methods. We also don't need
to keep passing one argument back and forth between methods because we
can just take one data structure and manipulate it over and over again.
In this case, the bingo array was the item we manipulated often.

How can you access coordinates in a nested array?

We can access the coordinates of a nested array by using brackets. In our 
case, we had to look for the .index placement of a certain array and see 
if it matched the random number we generated. We were checking the key and
value position of our passed array to see if it matched our randomized call.

What methods did you use to access and modify the array?

I used an iteration to check each element in a given array and wrote over 
that method if it matched a random number that was generated.

Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is 
it called?

I used the .sample method to return a random item in an array. This was a 
much more succinct way to return a random value rather than the longer
code block that I had used in the die solution from earlier.

How did you determine what should be an instance variable versus a local 
variable?

An instance variable would be that variable that would need to be called
throughout different methods. Since I'm working with a class that is passing
info back and forth, an instance variable was the best choice. A local
variable wouldn't be appropriate since I'm going back and forth amongst 
my class.

What do you feel is most improved in your refactored solution?

I was able to eliminate unnecessary information (such as some printing 
to the console), and I was able to break down some of my methods into one
line. This saved a good bit of space in my refactored solution.

=end
