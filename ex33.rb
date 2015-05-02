i = 0
numbers = []

while i < 6
  puts "At the top is #{i}"
  numbers.push(i)
  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom is #{i}"
end



# Write this 2 other ways:

puts "The numbers: "
numbers.each {|num| puts num}

(0..6).each do |i|
  puts "At the top is #{i}"
  numbers.push(i)
end