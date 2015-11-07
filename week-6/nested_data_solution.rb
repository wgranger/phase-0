# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][2][0]

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array]["array"][:hash]

p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
number_array = [5, [10, 15], [20,25,30], 35]
=begin
did not work
number_array.each_with_index do |num, index|
  if num.kind_of?(Array)
    num.each_with_index do |num2, index2|
      num[index2] += 5
    end
  else
    number_array[num] += 5
  end
end

p number_array
=end
number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |num|
  if num.kind_of?(Array)
    num.map! {|add| add+5}
    else
    num + 5
  end
end

p number_array

# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
=begin
startup_names.map! do |name|
  if name.kind_of?(Array)
    name.to_s {|startup| startup + "ly"}
  else
    name.to_s + "ly"
  end
end
=end
=begin
startup_names.map! do |name|
  if name.kind_of?(Array)
    name.map! do |startup| 
      if startup.kind_of?(String)
        startup.map! do |substartup|
        p "#{startup}" +"ly"
        if substartup.kind_of?(String)
          "#{startup}"+"ly"
        end
      else
    p "#{name}"+"ly"
  end
      end
    end
  end
end

p startup_names
=end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  if name.kind_of?(String)
    p name+"ly"
  else name.map! do |array|
    if array.kind_of?(String)
      p array+"ly"
    else array.map! do |sub|
      if sub.kind_of?(String)
        p sub+"ly"
      end
    end
    end
  end
end
end
   
startup_names

=begin
	
What are some general rules you can apply to nested arrays?

Nested arrays work just like a directory on the computer. You have to tap
into each level of the array until you get to the place you are looking
for. This same logic applies to flow control. In the last challenge we
had to write a new conditional for each nested array we encountered.

What are some ways you can iterate over nested arrays?

We separated each level of a nested array into a different iteration.
We told our iteration to search for an array inside an array, and treat
those items a specific way. The iteration would begin again if another array
was found.

Did you find any good new methods to implement or did you re-use one 
you were already familiar with? What was it and why did you decide that 
was a good option?

I used the .map! option agian instead of .each since map would create a
destructive iteration. This seemed to be the best option if I wanted to
change each item in place. I had never used the .kind_of? method to 
check the type of object I am dealing with. I'm sure this method will
come in handy in the future.
	
=end