# Animal is-a object look at the extra credit
class Animal
end

class Dog < Animal
  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name

    # Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

class Employee < Person
  def initialize(name, salary)
    super(name)
    @salary = salary
  end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

lucky = Dog.new("Lucky")
miumiu = Cat.new("Miumiu")
thuy = Person.new("Thuy")
thuy.pet = miumiu
linh = Employee.new("Linh", 120000)
linh.pet = lucky
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()




