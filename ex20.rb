# define a method
# method's parameters
# return result of method

# Lineared Programming
# Structural Programming
# Object Oriented Programming

# STDIN
# STDOUT
# STDERR

input_file = ARGV.first

def print_all(text_file)
  file_content = text_file.read
  file_line_count = file_content.split("\n").size
  puts "file_line_count = #{file_line_count}"
  puts file_content

  # In Ruby, a method result is the result of the last line
  # So if we want to return result as the last line, we don't need "return"
  return file_line_count
end

def rewind(f)
  f.seek(0)
end

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file file:\n"

file_line_count = print_all(current_file)

puts "How many lines you want to print out?"
number_of_line = STDIN.gets.chomp.to_i

if number_of_line > file_line_count
  puts "You entered #{number_of_line} which is greater than #{file_line_count}.We read only #{file_line_count} lines"
  number_of_line = file_line_count
end

puts "Now let's rewind, kind of like a tape." # to make the file start fromt he beginning

rewind(current_file)

#puts "Let's print three lines: "
#current_line = 1
#print_a_line(current_line, current_file)

#current_line = current_line + 1
#print_a_line(current_line, current_file)

#current_line = current_line + 1
#print_a_line(current_line, current_file)

# Another way to write lines:

number_of_line.times do |i|
  print_a_line(i + 1, current_file)
end


