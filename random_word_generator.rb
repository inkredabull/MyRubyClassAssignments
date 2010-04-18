# sudo gem install dancroak-webster --source=http://gems.github.com

require 'rubygems'
require 'webster'

@webster = Webster.new
10001.times { print @webster.random_word << " " }

