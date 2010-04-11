class ArrayMax
    def max_sub_sum(arg)
       @max_sum = 0
       @sub_sum = 0
       if arg.length > 0 
           summate(0, arg.first)
           arg[1...-1].length.times.each { |idx| 
                summate( arg[idx], arg[idx+1] ) 
           }
           summate(arg.last, 0)
       end
       @max_sum
    end

private

    def summate(a,b)
        @sub_sum = a + b 
        if @max_sum < @sub_sum
            @max_sum = @sub_sum
        end
    end

end

