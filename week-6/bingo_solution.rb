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

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection