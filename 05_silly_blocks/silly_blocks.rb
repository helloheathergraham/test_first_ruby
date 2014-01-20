def reverser
	if yield.include?(' ')
		yield.split(' ').each {|word| word.reverse!}.join(' ')
	else
		yield.reverse
	end
end

def adder(x = 1)
	num = yield
	num + x
end

def repeater(x = 1)
	x.times.map {|current| yield(current)}
end