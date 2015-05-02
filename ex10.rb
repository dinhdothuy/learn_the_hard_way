tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslach_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslach_cat
puts fat_cat

# Duoi day la nhung vi du cua escape sequences:

puts "Hello\\Thuy"
puts "Hello\'Thuy"
puts "Hello\"Thuy"
puts "Hello\aThuy"
puts "Hello\aThuy"
# \a tao am thanh bip
puts "Hello\bThuy"
# \b in chong de len 1 ky tu truoc do"
puts "Hello\fThuy"
puts "Hello\nThuy"
puts "Hello\r 65"
puts "Hello\r65"
puts "Hello\r3"
puts "Hello\tThuy"
# Voi lenh sau thi phai Google Unicode
puts "Hello\u0054huy"
puts "Hello\u00c6"
puts "Hello\u00a3"
puts "Hello\vThuy"
puts "Hello\ooo"
puts "Hello\456"
puts "Hello\987"
puts "Hello\x123"


# Thuc tap tren String bang cach chay tung lenh 1:
# Linh-Chaus-MacBook-Air:[/Users/thuydinh/projects]:$irb
# Thoat ra ngoai: irb(main):026:0> exit
# String se tro lai la: Linh-Chaus-MacBook-Air:[/Users/thuydinh/projects]:$
