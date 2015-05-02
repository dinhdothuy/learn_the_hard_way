# Create a mapping of state to abbreviation
states = {
  'Oregan' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Texas' => 'TX'
}

# Create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'TX' => 'Houston',
  'FL' => 'Jacksonville',
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts every state abbreviation
puts "United States: "
puts "The abbreviation of the states: "
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}."
end

# puts every cities in state abbreviation
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} state has the city #{city}."
end

# puts out some cities 
puts '-' * 10
puts "NY state has: #{cities['NY']} city."
puts "OR state has: #{cities['OR']} city."

# puts out some states
puts '-' * 10
puts "Texas's abbreviation is: #{states['Texas']}."
puts "Florida's abbreviation is: #{states['Florida']}."

# puts out some cities of states
puts '-' * 10
puts "Texas state has: #{cities[states['Texas']]}"
puts "Florida state has: #{cities[states['Florida']]}"

# puts out some cities and state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has the city #{city}."
end

puts '-' * 10
state = states['Michigan']
if !state
  puts "Sorry, no Michigan."
end

city = cities['MI']

# It is similar to this
# if city.nil?
#   city = 'Does Not Exist'
# end
# OR similar to this
# (city)? city : 'Does Not Exist'
city ||= 'Does Not Exist'
puts "The city for the state 'MI' is: #{city}"






