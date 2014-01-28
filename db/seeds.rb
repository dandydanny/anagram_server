require_relative '../app/models/word'
require_relative '../config/database'
require 'pry'
data = []
filename = File.dirname(__FILE__) + "/../app/words.txt"
File.open(filename).each do |line|
  data << line.chomp
end

data.each do |word|
  Word.create(word: word, sorted_word: word.split("").sort.join)
end
