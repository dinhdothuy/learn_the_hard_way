puts "You enter a secret room with two doors. Do you go through door 1 or door 2? "

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  choice = $stdin.gets.chomp

  if choice == "1"
    puts "Don't do that. The bear will share the cake with you."
  elsif choice == "2"
    puts "Don't do that. Lets sing a song"
  else
    puts "Well, doing %s is probably better. Bear runs away." %choice
  end

elsif door == "2"
  puts "You will see a full table with fruits. What will you pick to eat?"
  puts "1. Blueberries."
  puts "2. Watermelon."
  puts "3. Orange."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "We have a lot. Would you like to try some more."
  else
    puts "Wow... Sweet! You want to eat right now, or make some juice?"
  end

else
  puts "You stumble around and have nothing to eat. Poor you!"
end

