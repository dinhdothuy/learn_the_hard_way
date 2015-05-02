animals = ['bear', 'tiger', 'penguin', 'zebra', 'peacock', 'kangoroo']
count = ['first', 'second', 'third', 'fourth', 'fifth', 'sixth']

puts "In the zoo, there are many kinds of animals: "
animals.each do |i| 
  puts "#{i}"
end

puts "You want to choose the animal at "
number = gets.chomp.to_i

(0..6).each do |i| 
  if i == number 
    puts "You have a #{animals[i]}"
  end
end

puts "Which animal you choose?"
array = gets.chomp

(0..6).each do |i|
  if count[i] == array
    puts "You have a #{animals[i]}"
  end
end





