to_file = 'test_write.txt'
File.open(to_file, 'a') do |file_to_be_written| 
  file_to_be_written.write("Bullshit\n")
end