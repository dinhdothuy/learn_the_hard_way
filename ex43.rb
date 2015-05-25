class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    puts("\n***** @scene_map class is #{@scene_map.class}")
    puts("\n***** current_scene class is #{current_scene.class}")

    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene
  @@quips = [
    "You're in love. You kinda silly at this.",
    "Your mom would be proud... if you can control yourself.",
    "Such a funny life.",
    "He has many little puppies that are better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

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

class Finished < Scene
  def enter()
    puts "You won! Good job!"
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armony' => LaserWeaponArmony.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()












