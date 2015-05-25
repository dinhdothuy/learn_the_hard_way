class LaserWeaponArmony < Scene
  def enter()
    puts "You do a dive roll into the Weapon Armony, crouch and scan the room."
    puts "Get the code to open weapon box. If you get the code wrong 10 times"
    puts "then you're blocked. The code is 3 digits."
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    puts "#{code}"
    print "[(Type code) keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses < 10
      puts "BZZZZEDDD!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts "The container clicks open and seal breaks, let you jump to next door."
      puts "Then you run as fast as you can to the bridge where your weapon is."
      return 'the_bridge'
    else 
      puts "The lock buzzes... and you die."
      return 'death'
    end
  end
end