#first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

#$ruby ex13.rb first 2nd 3rd
#Your first variable is: first
#Your second variable is: 2nd
#Your third variable is: 3rd
#$ruby ex13.rb stuff things that
#Your first variable is: stuff
#Your second variable is: things
#Your third variable is: that


# The command line arguments come in as strings, even if you typed numbers on the command line. 
# Use .to_i to convert them, just like with gets.chomp.to_i.
number1, number2, number3 = ARGV
sum = number1.to_i + number2.to_i + number3.to_i 
puts "Your first number is: #{number1}"
puts "Your second number is: #{number2}"
puts "Your third number is: #{number3}"
puts "Sum of numbers is: #{sum}"

#$ruby ex13.rb 5 8 1
#Your first number is: 5
#Your second number is: 8
#Your third number is: 1
#Sum of numbers is: 14