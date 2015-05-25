class CentralCorridor < Scene
  def enter()
    puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "your entire crew. You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armony,"
    puts "put it in the bridge, and blow the the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapon Armony when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown custome"
    puts "flowing around his hate filled body. He's blocking the door to the"
    puts "Armony and about to pull a weapon to blast you."
    puts "> "

    action = $stdin.gets.chomp
    puts("\n\n**** Come here action = <#{action}>")
    if action == "shoot!"
      puts "You do a dive roll into the Weapon Armony, fighting with the Gothon..."
      puts "You are dead."
      return 'death'

    elsif action == "dodge!"
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as a Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you bang your head"
      puts "on the metal wall and pass out."
      puts "You wake up shorty after only to die as the Gothon stomps on your head"
      puts "and eats you."
      return 'death'

    elsif action == "tell a joke"
      puts "Lucky for you the made you learn Gothon insults in the academy." 
      puts "You tell the one Gothon joke you know."
      puts "While he's laughing you run up and shoot him. Then you jump through"
      puts "the Weapon Armony door."
      return 'finished'

    elsif action == "laser"
      puts "You got laser weapon."
      return 'laser_weapon_armony'

    else 
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end