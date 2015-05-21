#You can require files in the same directory by using the following:
require './ex25'

class Example
  include Ex25
  def word
    sentence = "All good things come to an end."
    @words = break_words(sentence)

    @words_sorted = Ex25::sort_words(@words)
    puts @words
    puts
    puts @words_sorted
  end
end

hello = Example.new
hello.word