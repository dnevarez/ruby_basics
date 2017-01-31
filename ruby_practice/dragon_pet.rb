class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # he's full.
    @stuff_in_intestine = 0 # doesn't need to go.

    puts "#{@name} is born."
  end

  # Feed
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  # Walk
  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  # Put to bed
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    # While asleep we'll want the passage_of_time method to run three times.
    3. times do
     if @asleep
       passage_of_time
     end
     if @asleep
       puts "#{@name} snores, filling the room with smoke."
     end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  # Toss
  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  # Rock
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  # The following methods are internal.

  # Hungry
  def hungry?
    @stuff_in_belly <= 2
  end

  # Poopy
  def poopy?
    @stuff_in_intestine >= 8
  end

  # Passage of time, this is when things happen.
  def passage_of_time

    if @stuff_in_belly > 0
      # move food from belly to intestine.
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end


    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}\'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

puts "Enter your dragon's name."

pet_name = gets.chomp.capitalize

pet = Dragon.new pet_name

command = ''

while command != 'exit'
  puts 'Enter a command to control your dragon:'
  command = gets.chomp.downcase
  if command == 'feed'
    pet.feed
  elsif command == 'walk'
    pet.walk
  elsif command == 'put to bed'
    pet.put_to_bed
  elsif command == 'toss'
    pet.toss
  elsif command == 'rock'
    pet.rock
  elsif command == 'exit'
    exit
  elsif command == 'help'
    puts ['feed', 'walk', 'put to bed', 'toss', 'rock', 'help', 'exit']
  else
    puts "Can\'t recognize your command, please re-enter. Or to see a list of commands, enter 'help'."
  end

end
