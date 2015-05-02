puts "People: "
people = gets.chomp.to_i
puts "Cats: "
cats = gets.chomp.to_i
puts "Dogs: "
dogs = gets.chomp.to_i

if people < cats
  puts "Too many cats! But it's ok! I love cats."
end

if people > cats
  puts "We need more cats. The world will be full of fun!"
end

if people < dogs
  puts "Many dogs. The world is drooled on!"
end

if people > dogs
  puts "Less dog. The world is dry!"
end

puts "I wanna add more: "
extra = gets.chomp.to_i
cats += extra
dogs += extra

if people > dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs"
end

if people == dogs
  puts "Great! We are the same as dogs."
end

puts "people = #{people}"
puts "cats = #{cats}"
puts "extra = #{extra}"

people += 3 * extra
puts "people = #{people}"

if people < cats
  puts "Too many cats! But it's ok! I love cats."
elsif people == cats
  puts "We have enough cats."
else
  puts "We need more cats. The world will be full of fun!"
end

puts "Let's try with Boolean expressions: "

puts people < dogs
unless people < dogs
  puts "People: #{people += extra}"
end

people >= dogs ? "dogs = people - dogs" : "dogs -= dogs"

puts "Need more #{dogs} dogs."


