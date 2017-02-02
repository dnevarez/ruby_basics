# mplement a method #substrings that takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument. It
# should return a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# This was my original solution, but I immediately felt there was a much better way,
# without using to each methods on two seperate arrays.

def substring(str, dictionary)
  words_found = Hash.new(0)
  string_array = str.split(' ')

  dictionary.each do |word|
    string_array.each do |sub|
      if /#{word}/.match(sub.downcase)
        words_found[word] += 1
      end
    end
  end
  words_found
end

# That's when I stumbled on scan. Scan will iterate through a string and return
# an array of all the values matching it's argument (which can be either a String or Regex)
# Then we simply call the count method on the array and assign the value to counter, which
# if greater than zero will be assigned to a hash key matching the value.

def substring(str, dictionary)
  words_found = Hash.new(0)

  dictionary.each do |word|
    counter = str.downcase.scan(word).count
    words_found[word] = counter if counter > 0
  end
  
  words_found
end
