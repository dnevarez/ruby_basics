# # Common String METHODS

# .length  // works just like it does in javascript
greeting = "Hello Everyone!"
# => "Hello Everyone!"
greeting.length
# => 15

# .split

sentence = "This is my sample sentence."
# => "This is my sample sentence."
sentence.split
# =>["This", "is", "my", "sample", sentence."]

# split defaults to split on the space, but can take an argument to split elsewhere

numbers = "one,two,three,four,five"
# => "one,two,three,four,five"
numbers.split
# => ["one,two,three,four,five"]
numbers.split(",")
# => ["one", "two", "three", "four", "five"]

# .sub (replace) and .gsub (replace all)
# short for subsitute and global subsitute
greeting.gsub("Eveyone!", "Friends!")
# => "Hello Friends!"

# Combining strings and variables

# String Concatenation
name = "Frank"
puts "Good morning, " + name + "!"
# => "Good morning, Frank!"

# String Interpolation
puts "Good morning, #{name}!"
# => "Good morning, Frank!"
# string interpolation only works on a double quoted string.

# Ruby code can also be put in the brackets when using interpolation.
modifier = "very "
mood = "excited"
puts "I am #{modifier * 3 + mood} for today's class!"
#  => "I am very very very excited for today's class!"
