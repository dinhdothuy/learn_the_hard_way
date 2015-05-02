irb(main):001:0> stuff = {'name' => 'Thuy', 'age' => 32, 'height' => 5 * 10 + 100}
=> {"name"=>"Thuy", "age"=>32, "height"=>150}
irb(main):002:0> puts stuff['name']
Thuy
=> nil
irb(main):003:0> puts stuff['age']
32
=> nil
irb(main):004:0> puts stuff['height']
150
=> nil
irb(main):005:0> stuff['city'] = "San Francisco"
=> "San Francisco"
irb(main):006:0> print stuff['city']
San Francisco=> nil
irb(main):007:0> stuff[1] = "eyes"
=> "eyes"
irb(main):008:0> stuff[2] = "heart"
=> "heart"
irb(main):009:0> puts stuff[1]
eyes
=> nil
irb(main):010:0> puts stuff[2]
heart
=> nil
irb(main):011:0> stuff
=> {"name"=>"Thuy", "age"=>32, "height"=>150, "city"=>"San Francisco", 1=>"eyes", 2=>"heart"}
irb(main):012:0>
irb(main):013:0* stuff.delete('city')
=> "San Francisco"
irb(main):014:0> stuff.delete(1)
=> "eyes"
irb(main):015:0> stuff.delete(2)
=> "heart"
irb(main):016:0> stuff
=> {"name"=>"Thuy", "age"=>32, "height"=>150}
