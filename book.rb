class Book
    def title=(arg)
        @title = arg
    end
    def title
        complete_title = "" 
        @title.split.each { |word| 
            if ["the","a","was"].index(word)
                complete_title << word
            else
                complete_title << word.capitalize 
            end
            complete_title << " " 
        }
        complete_title.chop!
    end
end
