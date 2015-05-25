module Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered() # goi truc tiep duoc ham
    puts "OTHER altered()"
  end
end

class Child 
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, before OTHER altered()"
    Other.altered()
    puts "CHILD, after OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()

puts "*" * 10
son.altered()

puts "*" * 10
Other.altered() # call truc tiep

# ex44f.rb:41:in `<main>': undefined method `override' for Other:Module (NoMethodError)
Other.override() # bao loi sai vi Other la Module

