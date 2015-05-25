class Parent
  def implicit()
    puts "PARENT implicit()"
  end

  def override()
    puts "PARENT override()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, before PARENT altered()"
    super()
    puts "CHILD, after PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

puts "*" * 10
dad.override()
son.override()

puts "*" * 10
dad.altered()

puts "*" * 5
son.altered()