class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_birthday = Song.new(["Happy birthday to you",
  "Happy bitrhday to you",
  "Happy birthday dear Thuy beo",
  "Happy birthday to you..."])
chau_len_ba = Song.new(["Chau len ba",
  "Chau vo mau giao",
  "Co thuong chau",
  "Vi chau khong khoc nhe..."])

happy_birthday.sing_a_song()
chau_len_ba.sing_a_song()
