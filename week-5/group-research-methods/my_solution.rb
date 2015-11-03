# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = []
  if source
    source.each do |x|
      if x.to_s.include? thing_to_find
        answer << x.to_s
      end
    end
  else
    puts "Array is empty."
  end
  answer
end

def my_hash_finding_method(source, thing_to_find)
  solution = []

  if source
    source.each do |x, y|
      if source[x] == thing_to_find
        solution << x.to_s
      end
    end
  else
    puts "The Hash is empty"
  end
  solution
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|var| 
    if var.is_a?(Integer)
      var + thing_to_modify
    else 
      next var
    end}
  p source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |var, num|
    source[var] = num + thing_to_modify
  end
  p source
end

# Identify and describe the Ruby method(s) you implemented.
=begin
The first method took an array of strings and integers (source) and altered
only the integers in that array.

The tricky thing about this first method was to get the code to treat only
the integers and not the string. If you pass .map! to the source array, 
the strings will also have some integer (thing_to_modify) added to them
and result in a nil output. Thus, we treat .map! as a sort of .each iterator.
In order to keep .map! for altering the string, I entered a "next var" line 
to pass over items in the array that aren't integers.

The second method was more straightforward. We wanted to increase the
integer values of a hash by one. 

I was able to use the .each iterator since each value we were working 
with was an integer. Thus, the math was easily accepted each time. 
Basically, I took each instance in the hash and examined only the value 
"num." I then added the integer given to "thing_to_modify" to that "num" 
value.

=end

# Person 3
def my_array_sorting_method(source)
  source.sort_by { |element|
    element.to_s
  }
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age|
    age
  }
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(array)
  num_array = array.grep(0..100)
  str_array = array.grep(String)
  return num_array, str_array
end

def my_hash_splitting_method(hash)
  return hash.each_slice(1) {|slice| p slice}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# 
# I learned that there are a number of different ways to complete a task. 
# Many of my cohort mates have found succinct ways to solve challenges, so
# it's nice to use that as inspiration to constantly refactor my methods.
#
#