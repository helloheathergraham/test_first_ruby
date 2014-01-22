class Temperature
	def initialize(hash)
		@hash = hash
	end

	def to_fahrenheit
		return @hash[:f] if @hash[:f] 
		if @hash[:c]
			(@hash[:c].to_f * 9 / 5) + 32
		end
	end

	def to_celsius
		if @hash[:f]
			((@hash[:f].to_f - 32) * 5 / 9)
		elsif @hash[:c]
			@hash[:c]
		end
	end

	def self.in_celsius(temp)
		new({:c => temp})
	end

	def self.in_fahrenheit(temp)
		new({:f => temp})
	end


end

class Celsius < Temperature
	def initialize(temp)
		@hash = { :c => temp}

	end

end


class Fahrenheit < Temperature
	def initialize(temp)
		@hash = { :f => temp}

	end
end