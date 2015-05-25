class TheBridge < Scene
  def enter()
    puts "You burst onto the Bridge with a bomb..."
    puts "What will you do with it?"
    print "> "
    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts "In the panic you throw the bomb..."
      puts "You run... but it's not fast enough."
      return 'death'

    elsif action == "slowly place the bomb"
      puts "You point your blaster at the bomb under your arms..."
      puts "You can escape now."
      return 'escape_pod'
    else
      puts "DOES NOT COMPUTE!"
      return 'the_bridge'
    end
  end
end