# This one is like youe scripts with ARGV 
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# Ok, that *args is actually pointless, we can just do this
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# This just takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# This one takes no argument
def print_none()
  puts "I got nothin'."
end


print_two("Do", "Dinh")
print_two_again("Do", "Dinh")
print_one("First!")
print_none()

