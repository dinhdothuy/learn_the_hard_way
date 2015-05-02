filename = ARGV.first

puts "We're going erase #{filename}"
puts "If you don't want that, hit Ctrl-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file...."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

puts "line 1: "
line1 = $stdin.gets.chomp
puts "line 2: "
line2 = $stdin.gets.chomp
puts "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it." #save the file
target.close

puts "Read again the lines you have just wroten on the file"
file_again = $stdin.gets.chomp
target_again = open(file_again)

print target_again.read



# Here’s the list of commands:

# close – Closes the file. Like File->Save.. in your editor.
# read – Reads the contents of the file. You can assign the result to a variable.
# readline – Reads just one line of a text file.
# truncate – Empties the file. Watch out if you care about the åle.
# write('stuff') – Writes ”stuff” to the file.