# 1
# Ruby is an "interpreted" programming language which means it can’t run on your processor directly, it has to be fed into a middleman called the "virtual machine" or VM
# This can be done through the terminal (command line) or through IRB

#2
# Variables
# Unlike javscript variable can simply be declared without predefining it. (var not need)
a = 5
# => 5
a
# => 5

# 3
# Strings
# The same as many other programming languages. It begins and ends with quotes.

# Common String METHODS

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

  ######################
# 4
# Symbols

# Symbols are halfway between a string and a number. They're recognizable because
# because they begin with a colon followed by one or more letters.
# :flag or :best_friend are some examples.

# If you're newer to programming think of symbols as stripped down strings, with much fewer methods and no string interpolation.
# The methods for each are compared below.

# "hello".methods
# => [:include?, :unicode_normalize, :to_c, :%, :unicode_normalize!, :unicode_normalized?, :*, :+, :count, :partition, :unpack, :encode, :encode!, :next, :casecmp, :insert, :bytesize, :match, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :+@, :-@, :setbyte, :getbyte, :<=>, :<<, :scrub, :scrub!, :byteslice, :==, :===, :dump, :=~, :downcase, :[], :[]=, :upcase, :downcase!, :capitalize, :swapcase, :upcase!, :oct, :empty?, :eql?, :hex, :chars, :split, :capitalize!, :swapcase!, :concat, :codepoints, :reverse, :lines, :bytes, :prepend, :scan, :ord, :reverse!, :center, :sub, :freeze, :inspect, :intern, :end_with?, :gsub, :chop, :crypt, :gsub!, :start_with?, :rstrip, :sub!, :ljust, :length, :size, :strip!, :succ, :rstrip!, :chomp, :strip, :rjust, :lstrip!, :tr!, :chomp!, :squeeze, :lstrip, :tr_s!, :to_str, :to_sym, :chop!, :each_byte, :each_char, :each_codepoint, :to_s, :to_i, :tr_s, :delete, :encoding, :force_encoding, :sum, :delete!, :squeeze!, :tr, :to_f, :valid_encoding?, :slice, :slice!, :rpartition, :each_line, :b, :to_r, :ascii_only?, :hash, :<, :>, :<=, :>=, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :!~, :respond_to?, :display, :send, :object_id, :method, :public_method, :singleton_method, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]

#  "hello".methods.count
# => 170

# :hello.methods
# => [:<=>, :==, :===, :=~, :[], :empty?, :inspect, :intern, :length, :size, :succ, :to_sym, :to_proc, :to_s, :next, :casecmp, :match, :upcase, :downcase, :capitalize, :swapcase, :slice, :encoding, :id2name, :<, :>, :<=, :>=, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :!~, :eql?, :respond_to?, :freeze, :display, :send, :object_id, :method, :public_method, :singleton_method, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]

# :hello.methods.count
# => 79

=begin

If you're more experienced in programming think of symbols as a "named integer".
It doesn’t matter what actual value the symbol references. All we care about is
that any reference to that value within the VM will give back the same value.
Symbols are thus defined in a global symbol table and their value cannot change.

=end

#########
# 5
# Numbers

# There are two kinds of numbers: integers (whole numbers) and floats (have a decimal point)
# 5.methods
# => [:%, :&, :*, :+, :-, :/, :<, :>, :^, :|, :~, :-@, :**, :<=>, :<<, :>>, :<=, :>=, :==, :===, :[], :inspect, :size, :succ, :to_s, :to_f, :div, :divmod, :fdiv, :modulo, :abs, :magnitude, :zero?, :odd?, :even?, :bit_length, :to_int, :to_i, :next, :upto, :chr, :ord, :integer?, :floor, :ceil, :round, :truncate, :downto, :times, :pred, :to_r, :numerator, :denominator, :rationalize, :gcd, :lcm, :gcdlcm, :+@, :eql?, :singleton_method_added, :coerce, :i, :remainder, :real?, :nonzero?, :step, :positive?, :negative?, :quo, :arg, :rectangular, :rect, :polar, :real, :imaginary, :imag, :abs2, :angle, :phase, :conjugate, :conj, :to_c, :between?, :instance_of?, :public_send, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend, :define_singleton_method, :to_enum, :enum_for, :=~, :!~, :respond_to?, :freeze, :display, :send, :object_id, :method, :public_method, :singleton_method, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
# 5.methods.count
# => 133

# Integers are easier for both you and the computer to work with.

# Integers are commonly used in repeating instructions. In another language this
# could be done in a for loop. For instance: javascript

for(var i = 0; i < 5; i++){
  console.log("Hello, World");
}

# Because Ruby’s integers are objects they have methods. One of those is the times method to repeat an instruction a set number of times.

# Rewriting the for loop above in Ruby we have

5.times do
  puts "Hello, World!"
end

###########
# 6
# Blocks
# A powerful concept frequently used in Ruby. Think of it as a way of bundling up a set of instructions for use elsewhere.

# A block starts with the keyword 'do' and ends with the keyword 'end'.
# When a block contains just a single instruction, though, we’ll often use the alternate markers { and } to begin and end the block:
# 5.times{ puts "Hello, World!" }

# Blocks are passed to methods
# For instance, if we called 5.times, Ruby wouldn't know what we want done 5 times. The block is the code saying, do this for each iteration.
# Many methods accept blocks. Like .gsub from above

"this is a sentence".gsub("e"){puts "Found an E!"}
# Found an E!
# Found an E!
# Found an E!
# => "this is a sntnc"

# It puts Found an E! for each 'e' found in the string, it also removes that letter, but doesn't replace it with anything because we didn't ask it to, resulting in 'sntnc'

# Blocks can take parameters through pipes

5.times do |i|
  puts "Hello, World!"
end

# Hello, World!
# Hello, World!
# Hello, World!
# Hello, World!
# Hello, World!
# => 5

5.times do |i|
  puts "#{i}: Hello, World!"
end

# 0: Hello, World!
# 1: Hello, World!
# 2: Hello, World!
# 3: Hello, World!
# 4: Hello, World!
# => 5

"this is a sentence".gsub("e"){|letter| letter.upcase }
# => "this is a sEntEncE"

##########

# 7
# Arrays
# Just like arrays in javascript

meals = ["Breakfast", "Lunch", "Dinner"]
# => ["Breakfast", "Lunch", "Dinner"]
meals << "Dessert" # << is the shovel operator
# => ["Breakfast", "Lunch", "Dinner", "Dessert"]
meals[2]
# => "Dinner"
meals.last
# => "Dessert"

# Common array methods

one = ["this", "is", "a", "sentence"]
one.sort
# => ["a", "is", "sentence", "this"]
# sort will sort an array alphabetically or numerically so long as the array is made up only of numbers or letters/words.

=begin

You can rearrange the order of the elements using the sort method. You can
iterate through each element using the each method.

You can mash them together into one string using the join method. You can find
the address of a specific element by using the

index method. You can ask an array if an element is present with the include? method.
We use arrays whenever we need a list where the elements are in a specific order.

Some more common methods:
each
collect
first and last
shuffle

=end

#######
# 8
# Hashes

# Hashes are similar to javascript objects. It is an unordered collection of data
# that utilzes key/value pairs.

produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
# => {"apples"=>3, "oranges"=>1, "carrots"=>12}
puts "There are #{produce['carrots']} carrots in the fridge."
# There are 12 carrots in the fridge.
# => nil

# When creating a hash the key and value are linked by the => symbol which is
# called a rocket. So hashes start with a curly bracket {, have zero or more
# entries made up of a key, a rocket, and a value separated by commas, then end
# with a closing curly bracket }.

produce["grapes"] = 221
# => 221
produce
# => {"apples"=>3, "oranges"=>6, "carrots"=>12, "grapes"=>221}
produce["oranges"] = 6
# => 6
produce
# => {"apples"=>3, "oranges"=>6, "carrots"=>12, "grapes"=>221}
produce.keys
# => ["apples", "oranges", "carrots", "grapes"]
produce.values
# => [3, 6, 12, 221]


# Simplified Hash Syntax
# Symbols are very commonly used as the keys of a has. When all the keys are symbols a shorthand syntax can be used.

produce = {apples: 3, oranges: 1, carrots: 12}
# => {:apples=>3, :oranges=>1, :carrots=>12}
puts "There are #{produce[:oranges]} oranges in the fridge."
# There are 1 oranges in the fridge.
# => nil

# NOTE: the keys end with a colon rather than beginning with one, even though these are symbols. This simplified syntax works with Ruby version 1.9 and higher. To find out which version of Ruby you have type "ruby -v" into the console.

###########

#9
#Conditionals

# Conditional statements evaluate to either true or false.
# The most common conditional operators are == (equal), > (greater than),
# >= (greater than or equal to), < (less than), and <= (less than or equal to).

# There are methods that return true or false, so they are used in conditional statements.
# Every object has the method .nil? which will only return true if the object is nil.
# Arrays have the method .include? which will return true if the specified value is in the array.

# The convention in Ruby is that a method which returns true or false should have a name ending in a ?.

# Like javascript we have if, elseif and else in the form of if, elsif and else.

def water_status(minutes)
  if minutes < 7
    puts "The water is not boiling yet."
  elsif minutes == 7
    puts "It's just barely boiling"
  elsif minutes == 8
    puts "It's boiling!"
  else
    puts "Hot! Hot! Hot!"
  end
end

# Equality vs Assigment

#  = is an assigment. It means the value on the left equals the value on the right. Telling, not asking.

# == is a question. Are these two values equal? Asking, not telling.

# There are also 'logical and' and 'logical or' operators, like in javascript, with && and ||

#########

# 10
# Nil & Nothing

# nil is Ruby's way of refering to nothingness.
# it often comes up in errors when you try to use something that doesn't exist yet.

# example
numbers = [1, 2, 3]
# => [1, 2, 3]
numbers[3]
# => nil
numbers[2]
# => 3

# Empty strings and the number zero are still something and won't result in nil.

########

# 11
# Objects, Attributes and Methods
# Ruby is object-oriented.

# This means all the things we interact with in the VM are objects. Each piece of data, an object.
# Objects hold information called attributes and they can perform actions, called methods.

# Common objects in Ruby
# Classes and Instances

# Classes are abstract descriptions of a category or type of thing. It defines what attributes and methods all objects of that type have.

# Defining a class

# If we model a school, we'd likely create a class named Student that represents the abstract idea of a student.
# It would then define attributes like a first and last name, and a phone number. Along with an action (method) like introduction.

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi, I'm #{first_name}"
  end
end

# attr_accessor is used to define attributes for instances of a class.

# The class itself doesn't represent the student, just the idea of what the student is like.
# To represent an actual student we must create an instance of the student class we defined above.

frank = Student.new
frank.first_name = "Frank"
frank.introduction
# => "Hi, I'm Frank"

# frank is now an instance of the Student class.

# Sometimes methods take one or more arguments to tell them what to do.

# if we redefine Student as such

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi #{target}, I'm #{first_name}"
  end
end

# And then the following:

frank = Student.new
frank.first_name = "Frank"
frank.introduction('Katrina')
# We get: => Hi Katrina, I'm Frank

# In Ruby, whenever a method is called, a value is returned.
# If we add a favorite_number method to our Student class.

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

# favorite_number will return 7

frank = Student.new
frank.first_name = "Frank"
puts "Frank's favorite number is #{frank.favorite_number}."
# => Frank's favorite number is 7.
