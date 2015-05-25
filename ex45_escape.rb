class EscapePod < Scene
  def enter()
    puts "You rush through the ship desperately trying to make it to the escape pod"
    puts "before the whole ship explodes."
    puts "There're 5 pods. Which one do you take?"

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "A killing machine is waiting for you."
      puts "You are dead."
      return 'death'
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "You look back and see your ship explodes, taking out the Gothon ship"
      puts "at the same time."
      puts "You won!"
      return 'finished'
    end
  end
end