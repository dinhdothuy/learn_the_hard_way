# Create a mapping of state to abbreviation
states = {
  'Oregan' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Texas' => 'TX'
}

STATES = states

# Create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'TX' => 'Houston',
  'FL' => 'Jacksonville',
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'


puts "The abbreviation of the states: "
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end
puts '-' * 10

puts "The cities in the states: "
cities.each do |abbrev, city|
  puts "#{abbrev} state has the city #{city}."
end
puts '-' * 10


# def state_code(state_name)
#   state_code = STATES[state_name]
#   return "That is: #{state_code}" if state_code 
#   "There is no state named #{state_name}"
# end

# puts "The abbreviation of the state:"
# state_name = gets.chomp
# puts state_code(state_name)

# other way:
puts "The abbreviation of the state:"
state_name = gets.chomp
result = (states[state_name])? "is #{states[state_name]}" : "There is no #{state_name} state."
puts result


