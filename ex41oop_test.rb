require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
  "class ### < ###\nend}" => 
            "Make a class named ### that is-a ###.",
  "class ###\n\tdef initialize(@@@)\n\tend\nend" => 
            "class ### has-a initialize that takes @@@ parameters.",
  "cclass ###\n\tdef ***(@@@)\n\tend\nend" =>
            "class ### has-a function named *** that takes @@@ parameters.",
  "*** = ###.new()" =>
            "Set *** to an instance of class ###.",
  "***.***(@@@)" =>
            "From *** get the *** function, and call it with parameters @@@.",
  "***.*** = '***'" =>
            "From *** get the *** attribute, and set it to '***'."
}

PHRASES_FIRST = ARGV[0] = "english"

open(WORD_URL) {|f| 
  f.each_line {|word| WORDS.push(word.chomp)}
}

def craft_names(rand_words, snippet, pattern, caps=false)
  names = snippet.scan(pattern).map do
    word = rand_words.pop
    caps ? word.capitalize : word
  end

  return names * 2
end

def convert(snippet, phrase)
  rand_words = WORDS.sort_by {rand}  # rand la so ngau nhien
  class_names = craft_names(rand_words, snippet, /###/, caps = true)
  other_names = craft_names(rand_words, snippet, /\*\*\*/)
  param_names = craft_names(rand_words, snippet, /@@@/)

  results = []

  [snippet, phrase].each do |sentence|
    # fake class name, also copies sentence
    result = sentence.gsub(/###/) {|x| class_names.pop}

    # fake other names
    result.gsub!(/\*\*\*/) {|x| other_names.pop}

    # fake parameter lists
    result.gsub!(/@@@/) {|x| param_names.pop}

    results.push(result)
  end

  return results
end

    # gsub -> gan gia tri moi vao object moi, con object cu khong doi
    # gsub! -> thay luon gia tri moi vao ngay object cu
    # vd: st = "Hello", neu goi st.gsub('l', 'k') => "Hekko", nhung st = "Hello"
    # neu goi st.gsub!('l', 'k') => "Hekko", nhung st = "Hekko"

# keep going until they hit CTRL_D
loop do
  snippets = PHRASES.keys.sort_by {rand}

  for snippet in snippets
    phrase = PHRASES[snippet]
    question, answer = convert(snippet, phrase)

    if PHRASES_FIRST
      question, answer = answer, question
    end

    print question, "\n\n> "

    exit(0) unless $stdin.gets

    puts "\nANSWER: %s\n\n" %answer
  end
end







