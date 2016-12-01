#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil? # if names is nil, print 3 dots
      puts "..."
    elsif @names.respond_to?("each")  # if names responds to "each", it means it's something that can be iterated over.
      # @names is a list of some kind, iterate!
      @names.each do |name|           # each is a method that accepts a block of code then runs that block of code for every element in a list, and the bit between do and end is just such a block. A block is like an anonymous function or lambda. The variable between pipe characters is the parameter for this block.
        puts "Hello #{name}!"         # This is similar to a for loop without the necessity of an extra variable for the iterator.
      end
    else                              # otherwise just print name as part of the string.
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
