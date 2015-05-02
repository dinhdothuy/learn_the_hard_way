# hash style:

# mystuff = {'apple' => "I AM APPLES!"}
# puts mystuff['apple']



# module style:

# module MyStuff
#   def MyStuff.apple()
#     puts "I AM APPLES!"  
#   end
# end


# or:
# module MyStuff
#   def MyStuff.apple()
#     puts "I AM APPLES!" 
#   end 

#     # This is just a variable
#     TANGERINE = "Living reflection of a dream."
# end



# class style:

class MyStuff
  def initialize()
    @tangerine = "I love apple pie!"
  end

  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end
end









