class Changer

	def self.make_change(coins)
		change = []

		quarters = coins / 25
		remainder = coins % 25

		dimes = remainder / 10
		remainder2 = remainder % 10

		nickels = remainder2 / 5
		remainder3 = remainder2 % 5

		pennies = remainder3 / 1



		quarters.times { |x| change << 25 }
		dimes.times { |x| change << 10 }
		nickels.times { |x| change << 5 }
		pennies.times { |x| change << 1}


		change
	end
end