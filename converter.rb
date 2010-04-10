class Converter
	def initialize
		@md = ""
	end
	def markdown=(text)
		text.each { |line|
			mdata = line.match(/^(#+)/) 
			if mdata 
				line.gsub!(/^#*/, "h" << mdata[1].size.to_s << "." ) 
			end

			line.gsub!(/\!\[alt-text\]\((.+?)\)/, '!\1!')

			@md << line
		}
	end

	def textile
		@md
	end
end

