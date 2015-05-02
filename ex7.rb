puts "Mary had a little lamb."
color = "snow"
# puts "It's fleese was white as #{'snow'}."
puts "It's fleese was white as #{color}."
puts "And everywhere that Mary went."
puts "." * 10 # what'd that do?
puts '.' * 10 # is it the same?

end1 = "C"
end2 = "h"
end3 = "e"
end4 = end3 # e
end5 = "s"
end6 = end3
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = end3
end12 = "r"

# watch that print vs. puts on this line what's it do?
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12


# another way to write Cheese

6.times do |i|
  print eval("end#{i+1}")
end

# another way to write Burger

st = ''
# to_a converts a range to an array
(7..12).to_a.each do |i|
  st += eval("end#{i}")
end

puts st