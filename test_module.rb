
module AgeCalc
  # define a class method of a module - use syntax <module name>.<method name>
  def AgeCalc.age_now(birth_year)
    Time.now.year - birth_year
  end
end

# Use Module class method: Call directly, using syntax <module name>.<method name>
puts "AgeCalc.age_now = #{AgeCalc.age_now(1971)}"

module MathCalc
  # define an instance method of a module - use syntax <method name>, there is no <module name>.
  def square(number)
    number * number
  end
end

# Use Module instance method: Must include the module first, then call only the method name
include MathCalc
puts "square(5) = #{square(5)}"
