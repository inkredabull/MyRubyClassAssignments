# Author: Anthony Bull (with attribution to Sarah Allen)

require 'rubygems'
require 'ruby-prof'
require 'random'

require "dictionary"

d = Dictionary.new

result = RubyProf.profile do
    $random_webster_words.each do |name|
        d.add(name)
    end
end
    
printer = RubyProf::FlatPrinter.new(result)
puts "\n***** Graph profile for adding *****\n\n"
printer.print(STDOUT, 0)

result = RubyProf.profile do
    $random_webster_words.each do |word|
        d.find(word)
    end
end

printer = RubyProf::FlatPrinter.new(result)
puts "\n***** Graph profile for finding *****\n\n"
printer.print(STDOUT, 0)
