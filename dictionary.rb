
# Author:   Anthony Bull
# Date:     4/10/2010
 
class Dictionary
    include Enumerable

    def initialize
        @words = []
    end

    def words
        @words 
    end
    
    def add(arg)
        @words.push arg
    end

    def find(arg)
        return @words.grep(/#{arg}/) { |w| w }
    end

    def each
        # yield 
    end

    def include?(word)
        return @words.include?(word)
    end

end

