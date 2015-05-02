formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

puts formatter % {
  first: "I has this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

# Practice more:

name = "%{first} %{second} %{third} %{fourth}"

print name % {first: 'T', second: 'H', third: 'U', fourth: 'Y'}
print ' love '
puts name % {first: 'L', second: 'I', third: 'N', fourth: 'H'}

# try another way:
print name % {second: 'H', fourth: 'Y', first: 'T', third: 'U'}
print ' love '
puts name % {fourth: 'H', first: 'L', second: 'I', third: 'N'}

# Practice with string

name1 = { '1'.to_sym => 'T', '2'.to_sym => 'H', '3'.to_sym => 'U', '4'.to_sym => 'Y'}
name2 = { '1'.to_sym => 'L', '2'.to_sym => 'I', '3'.to_sym => 'N', '4'.to_sym => 'H'}
st = ''
(1..4).to_a.each do |i|
  st += "%{#{i}}"
end

puts '******************'

# puts st to see st runs in right way

print st % name1
print " love " 
puts st % name2

# Difference between ' ' and " "
my_name = 'Thuy Beo'

# Dung nhay ' ', Ruby se khong dung gia tri cua variable
puts 'Nhay don - Hello, #{my_name}'

# Dung nhay " ", Ruby se dung gia tri cua variable
puts "Nhay kep - Hello, #{my_name}"








