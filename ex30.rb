puts "People: "
people = gets.chomp.to_i
puts "Cars: "
cars = gets.chomp.to_i
puts "Trucks: "
trucks = gets.chomp.to_i


if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Matbe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else 
  puts "Fine, let's stay home then."
end


puts "Men: "
men = gets.chomp.to_i
puts "Women: "
women = gets.chomp.to_i
puts "Kids: "
kids = gets.chomp.to_i

if men >= women || men >= kids
  puts "We don't need more men on the earth."
elsif men < women || men < kids
  puts "Wow... We have all strong men."
else 
  puts "We need more boys."
end