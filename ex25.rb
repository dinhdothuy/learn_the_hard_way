module Ex25

  # This function will bream up words for us.
  def Ex25.break_words(stuff)
    result = stuff.split(' ')
    return result
  end

  # Sorts the words.
  def Ex25.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  # Prints the frist and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end

# sort: sap xep thu tu theo a, b, c hoac 1, 2, 3
# lenh de goi file su dung trong irb la "require" hoac "load"
# $ irb
# irb(main):001:0>
# require "./ex25.rb"
# sentence = "All good things come to those who wait."
# words = Ex25.break_words(sentence)
# words
# sorted_words = Ex25.sort_words(words)
# sorted_words
# Ex25.print_first_word(words)
# Ex25.print_last_word(words)
# words
# Ex25.print_first_word(sorted_words)
# Ex25.print_last_word(sorted_words)
# sorted_words
# sorted_words = Ex25.sort_sentence(sentence)
# sorted_words
# Ex25.print_first_and_last(sentence)
# Ex25.print_first_and_last_sorted(sentence)
