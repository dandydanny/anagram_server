require_relative '../app/models/word'
require_relative '../config/database'
require 'pry'
data = []
filename = File.dirname(__FILE__) + "/../app/words.txt"
File.open(filename).each do |line|
  data << line.chomp.split(',')
end

data.each do |row|
  Word.create(word: row.first)
end
