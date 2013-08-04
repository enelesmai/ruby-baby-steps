class FizzBuzz

	#Get the numbers from 1 to $times. 
	#For multiples of three print "Fizz" instead of the number 
	#and for the multiples of five print "Buzz". 
	#For numbers which are multiples of both three and five print "FizzBuzz?".
	##Added: A number is fizz if it is divisible by 3 or if it has a 3 in it
  	##Added: A number is buzz if it is divisible by 5 or if it has a 5 in it
	def printFizzBuzz(times)
		result = Array.new
		
		for number in 1..times
			if number%15 == 0
				result.push("FizzBuzz?")
			else
				if (number%3 == 0) or (number-3)%10 == 0
					result.push("Fizz")
				elsif (number%5 == 0) or (number-5)%10 == 0
					result.push("Buzz")
				else
					result.push(number)
				end
			end
		end

		result
	end

end

fb = FizzBuzz.new
print fb.printFizzBuzz(100)
