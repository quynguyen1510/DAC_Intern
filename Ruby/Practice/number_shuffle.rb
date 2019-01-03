## Number shuffle
# - Problem Statement: Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits
# - Example:  Given: 123. Return: [123, 132, 213, 231, 312, 321]

# Calculate factorial 
def calculate_factorial(number)
	factorial = 1
	if(number == 0 || number == 1)
		factorial = 1
	else
		for i in 1..number do
			factorial *= i
		end
	end
	factorial
end

def number_shuffle(number)
	size = number.to_s.size

	# Calculate factorial 
	factorial = calculate_factorial(size)
	
	# Split number to arr "123" =>["1","2","3"]
	arr = number.to_s.split(//)

	#arr.shuffle => ["2","1","3"] arr.shuffle.join => ["213"]
	result = []
	until result.uniq.size == factorial
		result << arr.shuffle.join.to_i
	end
	p result.uniq.sort
end

number_shuffle(123)