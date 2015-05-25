class Death < Scene
  @@quips = [
    "You're in love. You kinda silly at this.",
    "Your mom would be proud... if you can control yourself.",
    "Such a funny life.",
    "He has many little puppies that are better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end