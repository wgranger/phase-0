What does puts do?

"puts" will return nil and print the output of any command on a new line of a console. The main difference between "puts" and "prints" is that "puts" will insert the new line.

What is an integer? What is a float?

An integer is a whole number (as we would have learned it in school). A float is any number with a decimal point. Floats are also known as floating point numbers. Examples of integers include: 1, 50, 34. Examples of floats include: 1.4, 53.1, 9.9.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float will include part of a whole number. As stated earlier, 1.2 is an example of float (with .2 being part of the next whole number). It is like one (whole) and a fifth of the second. Ruby will pretty much eliminate the remainder of a number when dividing. For example, if you divided 5/2 in Ruby, the output would be 2. Although there is a remainder of one, Ruby will not print that remainder. In short, Ruby doesn't care for remainders in integer division (although Modulo will probably enter later). Chris Pine used money to illustrate his example. Using that analogy, let's say I have $7 and bottles of water cost $2. How many bottles could I buy? The answer is three. In this sense, Ruby doesn't care about the extra "dollar."

The following program will display the number of hours in a year as well as minutes in a decade:
```
puts 24*365
puts (60*24)*365*10
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles these methods pretty easy. However, I was a bit surprised about the need for floats, especially that I needed to convert my whole numbers into floats before dividing them. I wonder if this will get me in trouble in the future. I'm glad I'm being presented with the idea of floats early before I start to get set in my Ruby ways. 

What are strings? Why and when would you use them?

Strings are a collection of letters, words, or characters. You might use them to display language on the screen. Strings should always be contained in quotation marks, either single or double.

What are local variables? Why and when would you use them?

Local variables are local to the code construction in which they are defined. A local variable cannot be accessed outside of the construct in which it was declared. Local variables, by convention, begin with an underscore or lower case letter. 

How was this challenge? Did you get a good review of some of the basics?

I'm glad I jumped into RSPEC, because it didn't really make much sense when reading about it or watching videos, but just trying it out on my own makes me more comfortable with testing out Ruby code. Now I just need to learn how to write the code that RSPEC scans. I was also a bit worried that I had forgotten Ruby altogether, but this challenge was a nice reintroduction into Ruby.