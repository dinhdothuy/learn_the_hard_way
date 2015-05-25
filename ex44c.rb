class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, before PARENT altered()"
    super()
    puts "CHILD, after PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()

