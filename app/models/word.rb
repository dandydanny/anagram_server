require_relative '../../config/database'
class Word < ActiveRecord::Base

  def self.anagrams(word)
    user_sorted_word = word.split("").sort.join
    obj =  Word.find_all_by_sorted_word(user_sorted_word)
    word_list = []

    obj.each do |item|
      word_list << item.word
    end

    word_list = word_list.join(", ")
  end

end

