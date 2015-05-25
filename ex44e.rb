class Other
  def implicit()
    puts "OTHER implicit()"
  end

  def override()
    puts "OTHER override()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child 
  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, before OTHER altered()"
    @other.altered()
    puts "CHILD, after OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

