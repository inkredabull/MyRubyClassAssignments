class XmlDocument
	
	def initialize(*args)
		if args[0] == true 
			@indent = true 
		end
		@indent_level = 0 
		@newline = ( @indent == true ) ? "\n" : "" 
		@indent_var = "  "
	end

	def method_missing(m, *args)
		attribs = []
		if args != nil
			args.each { |argv| 
				argv.keys.each { |key|
					attribs << "#{key}='#{argv[key]}'"
				} 
			}
		end

		if block_given?
			result = "<#{m}>"  
			result += @newline 
			
			@indent_level += 1 if @indent

			@indent_level.times { result += @indent_var } if @indent 

			result += yield

			@indent_level -= 1 if @indent

			@indent_level.times { result += @indent_var } if @indent 

			result += "</#{m}>" + @newline 
		else
			result = "<#{m}"  
			result += " " + attribs.to_s unless attribs.length == 0
			result += "/>" + @newline
		end

		result
	end	
end

#xd = XmlDocument.new(true)
#result = xd.hello { xd.goodbye { xd.come_back { xd.ok_fine({ :be => "that_way" }) } } }
#puts result
