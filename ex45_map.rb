require 'ex45_center.rb'
require 'ex45_weapon.rb'
require 'ex45_town.rb'
require 'ex45_escape.rb'
require 'ex45_death.rb'
require 'ex45_finish.rb'


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