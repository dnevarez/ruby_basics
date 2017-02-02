
def caesar_cipher(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  string.chars.map { |c| encrypter.fetch(c, c) }.join
end

p caesar_cipher("This is how we do! BOOYAHKASHA!!")
# => "Uijt jt ipx xf ep! CPPZBILBTIB!!"

=begin

  Let's take a look at how this works.

  We start by defining ceasar_cipher and dictating that it will take at least one argument. shift is optional because we've set a default value.

  def caesar_cipher(string, shift = 1)

    The following creates an array containing lowercase letters a-z.

    alphabet  = Array('a'..'z')

    Next we create a Hash. There's quite a bit happening in the next line of code so let's break it down.

    # # ZIP # #
    Zip is a method we can call on an Array.  It essentially creates an array of arrays.
    For example if we take our variable, alphabet, which is a simple array consisting of the letters a through z and called
    zip on it, passing in an array of numbers from 1 to 26, we would get an array of arrays, each containing a letter and number.
    It would look something like this:

    alphabet.zip(Array(1..26))
     => [["a", "1"], ["b", "2"], ["c", "3"], ["d", "4"], ["e", "5"], ["f", "6"], ["g", "7"], ["h", "8"], ["i", "9"], ["j", "10"], ["k", "11"], ["l", "12"], ["m", "13"], ["n", "14"], ["o", "15"], ["p", "16"], ["q", "17"], ["r", "18"], ["s", "19"], ["t", "20"], ["u", "21"], ["v", "22"], ["w", "23"], ["x", "24"], ["y", "25"], ["z", "26"]]

    It essentially 'zips' the two arrays together into one.

    # # ROTATE # #
    Another method we call on arrays. This rotates the values at each index by a certain number. So if we were to rotate alphabet by one.
    index 0 would be b, index 1 would become c all the way through until we reach the end, with index 25 becoming a.
    Like so:

    alphabet.rotate(1)
     => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"]

    So in our next line of code, we are going to utilize these two methods to create our cipher.
    We rotate alphabet 'shift' times. By default shift is 1, unless otherwise dictated.
    We then zip that rotated array of letters to the original array of letters (a-z).
    We now have an array of arrays, each smaller array containing a letter and it's cipher counterpart.

    The array is then converted into a hash and assigned to the variable non_caps.

    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

    Here we do the same as above with an array of uppercase letters.

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

    Here we merge the two hashes into one hash and assign it to encrypter.

    encrypter = non_caps.merge(caps)

    This is where it all comes together.
    We take the passed in string and call the chars (characters) method on it,
    converting the string into an array, each character getting its own index.
    Then we call the map method on that array. Map returns a new array built of
    each returned item from the block. (The code run between {} on each index of array.)
    So in our case we are using c to represent each item (character) in our array.
    Then we call the fetch method on our encrypter hash. Fetch will look for a
    key in the hash matching the first parameter passed in, which is c (the item, or character)
    and will then return it's corresponding value from the hash.
    If no key is found, it will return the default which we passed in as the second parameter,
    also c. This is for spaces, punctuation and any other special characters.

    We end with the join method, converting our new array into a string.

    string.chars.map { |c| encrypter.fetch(c, c) }.join
  end
  
=end
