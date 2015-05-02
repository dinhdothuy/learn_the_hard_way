from_file, to_file = ARGV

puts "Copy from #{from_file} to #{to_file}"

# We could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, Ctrl-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close


# Make copy in one line:
# File.open(to_file, 'w') { |f| f.write(File.read(from_file))}
# or
# File.open(to_file, "w") {|f| f.write IO.read(from_file)}

# Block in Ruby language
# to_file is passed in to the block as file_to_be_written
File.open(to_file, 'w') { |file_to_be_written| file_to_be_written.write("Bullshit")  }

# Another syntax of block
File.open(to_file, 'w') do |file_to_be_written| 
  file_to_be_written.write("Bullshit")
end


# http://ruby-doc.org/core-2.2.2/File.html
# File.open mode 'r': read, 'w': write (viet de), 'a': append (viet them vao cuoi)