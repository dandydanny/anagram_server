require_relative '../../config/database'
class Word < ActiveRecord::Base

  def self.anagrams(word)
    user_word = word.split("").sort
    ana = []
    self.where("length(word)" == word.length).each do |w|
      temp = w[:word].downcase.split("").sort
      ana << w[:word] if user_word == temp
    end
    ana.join("\n")
  end
end

