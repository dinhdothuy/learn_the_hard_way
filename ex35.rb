def gold_room
  puts "This room is full of gold. How much do you take? "
  print "> "
  choice = $stdin.gets.chomp

  if choice.include?('0') || choice.include?('1')
    how_much = choice.to_i
  else
    dead("Wrong number.")
  end

  if how_much < 50
    puts "Nice, you win."
    exit(0)
  else
    dead("You're loser.")
  end
end



def bear_room
  puts "There is a bear here."
  puts "What will you do with the bear:" 
  puts "give honey, give cheese cake, sing a song?"
  bear_likes = false

  while true
    print "> "
    choice = $stdin.gets.chomp
    
    if choice == "give honey"
      dead("The bear looks at you and smiles.")
    elsif choice == "give cheese cake" && !bear_likes
      puts "The bear slaps hands."
      bear_likes = true
    elsif choice == "give cheese cake" && bear_likes
      dead("The bear will be angry.")
    elsif choice == "sing a song" && bear_likes
      gold_room
    else
      puts "The bear got no idea what means."
    end
  end
end



def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?('flee')
    start
  elsif choice.include?('head')
    dead("well that was tasty!")
  else
    cthulhu_room
  end
end



def dead(why)
  puts why, "Good job!"
  exit(0)
end



def start
  puts "You are in a dark room."
  puts "There is a door to you right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You have to go back now.")
  end
end

start




