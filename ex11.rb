puts "What is your name? "
name = gets

puts "Hello #{name}. How are you?"

puts "What is your name? "
name = gets
name = name.chomp

puts "Hello #{name}. How are you?"

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall, and #{weight} heavy."

#  gets.chomp.to_i which says, ”Get a string from the user, chomp off the \n, and convert it to an integer.”
puts "Try with number:"
number = gets.chomp.to_i
puts "You got: #{number} with number type: #{number.class}"
sum = number + 4
puts "number + 4 = #{sum}"

puts "Try with number (not to_i):"
number_str = gets.chomp
puts "You got: #{number_str} with number type: #{number_str.class}"
# sum_str = number_str + 4
# puts "number_str + 4 = #{sum_str}"
# bao loi, vi string khong cong duoc voi so.