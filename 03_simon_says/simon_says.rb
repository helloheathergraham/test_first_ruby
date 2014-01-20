def echo(greeting)
	return "#{greeting}"
end

def shout(exclaim)
	return "#{exclaim.upcase}"
end

def repeat(string, x=2)
	([string] * x).join ' '
end

def start_of_word(string, x)
	return string[0..x.to_i-1]
end

def first_word(string)
	return string.split(' ')[0]
end

def titleize(string)
	words = string.split(' ')
	words.each_with_index do |word, index|
		if index == 0 
			word.capitalize!
			else
				if word == "and" 
					word
				elsif word == "the" 
					word
				elsif word == "over"
					word
				else
			 		word.capitalize!
			 	end
	 	end
	 end.join(' ')
end