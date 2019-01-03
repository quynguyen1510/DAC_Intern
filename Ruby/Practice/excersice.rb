## Palindromes (strings)
# - Given a sentence, return true if the sentence is a palindrome.
# - Note: Ignore whitespace and cases of characters.
# - Example: Given "Never odd or even" the method should return true

def palindromes?(sentence)
	string = sentence.downcase.gsub(" ","")
	string == string.reverse
end

## Compute sum of cubes for given range
# - Problem Statement
#   - Compute the sum of cubes for a given range a through b.
#   - Write a method called sum_of_cubes to accomplish this task
# - Example Given range 1 to 3 the method should return 36
# 
def sum_of_cubes(a,b)
	(a..b).inject { |sum, number| 
		sum += (number**3)
	}
end

## Find non-duplicate values in an Array
# - Problem Statement: Given an Array, return the elements that are present exactly once in the array.
# - Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def non_duplicated_values(values)
  p values.select{ |i|
      values.count(i) == 1
  	}
end

## Check if all elements in an array are Fixnum
# - Problem Statement: Given an array, return true if all the elements are Fixnums.
# - Example: Given [1,2,3], the method should return true

def check_fixnum?(values)
	values.all?{ |i|
		i.is_a? Fixnum
	}
end

##- Find if a given number is a Kaprekar number.

def kaprekar_number?(number)
	count = number.to_s.size
	pow = (number**2).to_s
	first_haft = pow[(pow.length-count)..(pow.length-1)]
	second_haft = pow[0...(pow.length-(count))]
	number == first_haft.to_i + second_haft.to_i
end

## Select random elements from an array 
#Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the given array. 

def rand_from_arr(arr,n)
	result = []
	n.times{
		result << arr[rand(arr.length)]
	}
	result
end

## Number shuffle
# - Problem Statement: Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits
# - Example:  Given: 123. Return: [123, 132, 213, 231, 312, 321]

def number_shuffle(number)
	size = number.to_s.size

	# Calculate factorial 
	factorial = 1
	if(size == 0 || size == 1)
		factorial = 1
	else
		for i in 1..size do
			factorial *= i
		end
	end

	# Split number to arr "123" =>["1","2","3"]
	arr = number.to_s.split(//)
	result = []
	while result.uniq.size != factorial
		result << arr.shuffle.join
	end
	p result.uniq.sort
end
p number_shuffle(123)
