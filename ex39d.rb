# require './ex39c.rb'

# create a mapping of state to abbreviation
states = Dict.new()
Dict.set(states, 'Oregan', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')
Dict.set(cities, 'NY', 'New York')
DIct.set(cities, 'OR', 'Portland')

# puts out some cities
puts '-' * 10
puts "NY State has: #{Dict.get(cities, 'NY')}"
