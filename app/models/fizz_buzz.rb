class FizzBuzz < ApplicationRecord
	def self.to_Fizz array
		array.each do |i|
			if i.value%3 == 0
				i.fizzbuzz = "Fizz"
				i.save
			end
		end
		array
	end

	def self.to_Buzz array
		array.each do |i|
			if i.value%5 == 0
				i.fizzbuzz = "Buzz"
				i.save
			end
		end
		array
	end

	def self.to_FizzBuzz array
		array.each do |i|
			if i.value%15 == 0
				i.fizzbuzz = "FizzBuzz"
				i.save
			end
		end
		array
	end
end