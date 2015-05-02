print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."
# Ket qua ra 1 so nguyen

print "How much is this hat? "
price = gets.chomp
print "I give you "
money = gets.chomp
change = money.to_i - price.to_i
puts "I give back to you #{change} dollars"

print "How much is this hat? "
price = gets.chomp
print "I give you "
money = gets.chomp
change = money.to_f - price.to_f
puts "I give back to you #{change} dollars"

print "How much is this hat? "
price = gets.chomp
print "I give you "
money = gets.chomp
change = money.to_f - price.to_f
puts "I give back to you #{change.round(2)} dollars"

print "How much is this hat? "
price = gets.chomp
print "I give you "
money = gets.chomp
change = money.to_f - price.to_f
puts "I give back to you #{change.round(2)} dollars"
puts sprintf('Use sprintf to format - I give back to you %.2f dollars', change)