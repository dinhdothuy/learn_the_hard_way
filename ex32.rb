the_count = [1, 2, 3, 4, 5]
fruits = ['apple', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Make a 2-demensional (2D) array? Thuong thay trong giai toan Ma tran
# That's an array in an array like this: [[1, 2, 3], [1, 2, 3]]

# This first kind of for-loop goes through a list (call "array" in Ruby)
# in a more traditional stuly found in other languages
for number in the_count
  puts "This is count #{number}"
end



# Same as above, but in a more Ruby style
# This and the next one are the preferred way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end



# Also we can go though mixed lists too
# Note this is yet another style, 
# exactly like above, but a different syntax (way to write it)
change.each {|i| puts "I got #{i}" }



# We can also buite lists, first start with an empty one.
elements = []
# then use the renge operator to do 0 to 5 counts
(0..5).each do |i|
  puts "Adding #{i} to the list."
  # pushes the i cariable on the *end* of the list
  elements.push(i)
  # cau lenh tren co the viet la: elements << i
end

# Now we can print them out too
elements.each {|i| puts "Element was: #{i}"}



