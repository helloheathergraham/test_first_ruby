class Array
attr_accessor :sum

def sum
	inject(0) {|x, y| x + y }
end

def square
	map {|i| i ** 2}
end

def square!
	map! {|i| i ** 2}
end

end