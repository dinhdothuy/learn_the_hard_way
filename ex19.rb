def cheese_and_crackers(cheese_count, box_of_crackers)
  puts "You have #{cheese_count} cheese!"
  puts "You have #{box_of_crackers} box of crackers!"
  puts "Man that's get enough for a party!"
  puts "Get a blanket. \n"
end

puts "We can just give the function numbers directly: "
cheese_and_crackers(20, 30)

puts "OR, we can use variables from out script: "
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

puts "Let's practice by combine with input from user:"
puts "How much for a cheese cake? "
cheese_price = gets.chomp.to_f
puts "How much for a box of cracker? "
cracker_price = gets.chomp.to_f
puts "How many cheese and box of crackers do you need? "
amount_of_cheese = gets.chomp.to_i
amount_of_crackers = gets.chomp.to_i
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

sum = amount_of_cheese * cheese_price + amount_of_crackers * cracker_price
puts "So total you have to pay is: #{sum}"
puts "You gave me: "
money = gets.chomp.to_f
puts "Change back is: #{money - sum}"
