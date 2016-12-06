# METHODS
# Similar to methods and functions in js

def hi
  puts 'Hello World!' #similar to console.log in js
end

# Redefine method to take a parameter
def hi(name)
  puts 'Hello #{name}!' # #{name} allows ruby to inject parameter into string
end

# Redefine parameter to have default if one is not provided
def hi(name = "World")
  puts 'Hello #{name.capitalize}!' # Will capitalize name parameter
end

# CLASSES

class Greeter
  def initialize(name = "World") # sets a default value for name parameter
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

# Declare variable and assign it a new instance of Greeter
greeter = Greeter.new("Pat")

greeter.say_hi # => "Hi Pat!"
greeter.say_bye # => "Bye Pat, come back soon."

=begin
 Currently we are unable to reassign the value of name,
 because we don't have access to the name variable.
 We can change this by defining attr_accessor inside of Greeter.
=end

class Greeter
  attr_accessor :name
end

# We will now have access to greeter.name and greeter.name=

greeter = Greeter.new("Andy")

greeter.name # => "Andy"
greeter.say_hi # => "Hi Andy!"

greeter.name="Betty"

greeter.say_hi # => "Hi Betty!"

# Arrays are lists between square brackets, just like in javascript

 movie_array = ['transformers', 'pirates of the carribean', 'batman']

 # Hashes are lists with key value pairs, just like objects in javascript.

 movie_ratings = Hash.new(0)

 # movie_ratings['transformers'] = 1
 # => 1
 # movie_ratings['pirates of the carribean'] = 3
 # => 3
 # movie_ratings.length => 2
 # movie_ratings => {"transformers"=>1, "pirates of the carribean"=>3}

 # or

 # movie_ratings['transformers'] = 'crap'
 # => "crap"
 # movie_ratings => {"transformers"=>"crap", "pirates of the carribean"=>3}
