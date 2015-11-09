# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Edward Gemson].
# I spent [3.5] hours on this challenge.

### PseudoCode
=begin
Input: an integer argument
Output: True or False

CREATE a class called Check_Card
  Initialize method that takes an integer as an argument
  Attach argument to a class variable
  IF the last index of the integer isn't the 16th digit, RAISE argument error
END initialize method

Create a method called double_digit
  Turn the integer into an array (.to_a)
  Reverse the integer
.map!.with_index to find every other integer in array and double value
@cardnumber.to_s.split(//).reverse.odd 

END method
 
Create a method sum_values 
Slice array to separate double digits: array.slice(0, array.last)
Inject addition sign into array (array_name.inject(:+)
Check if total modulo 10 equals zero: if % 10 == 0
END sum method

=end


# Initial Solution
=begin
class CreditCard
  def initialize(cardnumber)
    @cardnumber = cardnumber
    if cardnumber.to_s.length != 16 
      raise ArgumentError.new("Card number not 16 digits.")
    end 
  end
  
 def double_digit
    @numberarray = []
    @odds = []
    @even = []
    @numberarray = @cardnumber.to_s.chars.reverse
    @numberarray.each_with_index do |x, i|
      if i % 2 != 0
        @odds << (x.to_i * 2)
      else
        @even << x.to_i
    end
      @combinedarray = @odds + @even
      p @combinedarray
    end
  end
  
  def sum_values
    double_digit
    @combinedarray.map! do |num|
      if num >= 10
        num = (num/10) + (num%10)
      else num
      end
    end
    @combinedarray = @combinedarray.inject(:+)
  end
  
  def check_card
    sum_values
    if @combinedarray % 10 == 0
      p true
    else 
      p false
    end
  end
end

card = CreditCard.new(4563960122001999)
card.check_card
=end
# Refactored Solution

 class CreditCard
  def initialize(cardnumber)
    @cardnumber = cardnumber
    if cardnumber.to_s.length != 16 
      raise ArgumentError.new("Card number not 16 digits.")
    end 
  end
  
  def double_digit
    @doubledarray = []
    @numberarray = @cardnumber.to_s.split(//)
    @numberarray.each_with_index do |num, val|
    if val % 2 != 1
      num = num.to_i * 2
      @doubledarray.push(num)
    else
      @doubledarray.push(num.to_i)
    end
      @doubledarray
    end
  end
  
  def sum_values
    double_digit
    @doubledarray.map! do |num|
      if num >= 10
        num = (num/10) + (num%10)
      else num
      end
    end
    @doubledarray = @doubledarray.inject(:+)
  end
  
  def check_card
    sum_values
    if @doubledarray % 10 == 0
      p true
    else 
      p false
    end
  end
end

card = CreditCard.new(4563960122001999)
card.check_card



# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

The most difficult challenge we faced was having to switch back and forth
between different methods depending on what kind of class our element
was in. We often changed from an integer to a string and then to an
array, so we had to keep in mind that some methods wouldn't work with
other classes. This meant we were doing a good bit of research while
completing the challenge.

What new methods did you find to help you when you refactored?

We used the .inject method again. This was a helpful method in an earlier
challenge, but I didn't expect it to pop up again so soon. Aside from that,
many of our methods were ones we had used before, we simply solidified our
understanding of them through this challenge.

What concepts or learnings were you able to solidify in this challenge?	

I think we have a good grasp of different classes now. Another problem
we faced was using an instance variable in a class in wasn't created in. 
Although this is fine to do in Ruby, we learned that the variable would
always return nil if we didn't first call the method in which it was 
created. 
=end


