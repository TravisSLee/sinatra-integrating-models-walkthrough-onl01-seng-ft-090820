# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

def most_used_letter
    string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
    comparing_letters = string.uniq
    most_used = ""
    count = 0

    comparing_letters.map do |letter|
      repetitions = string.count(letter)
      if repetitions > count
        count = repetitions
        most_used = letter
      end
    end
    biggest = [most_used, count]
  end

end