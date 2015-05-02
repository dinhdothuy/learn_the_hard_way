# Hash
animals = {
  first: 'bear',
  second: 'tiger',
  third: 'penguin',
  fourth: 'zebra',
  fifth: 'peacock',
  sixth: 'kangoroo'
}


puts "In the zoo, there are many kinds of animals: "
animals.values.each do |i| 
  puts "#{i}"
end

puts "You want to choose the animal at "
number = gets.chomp.to_i
puts "You have a #{animals.values[number]}"
  
puts "Which animal you choose?"
choice = gets.chomp
puts "You have a #{animals[choice.to_sym]}"
  





