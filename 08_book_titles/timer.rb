class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		h = (@seconds/3600).floor
		m = ((@seconds % 3600)/60).floor
		s = (@seconds % 60)
		time = Time.new(0000, 01, 01, h, m, s)
		time.strftime("%T")
	end


	# def padded
	# 	if @seconds.between? (0...9)
	# 		"0" + "x"
	# 	else x > 9
	# 		x
	# 	end
	# end
end
