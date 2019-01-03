## Select random elements from an array 
#Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the given array. 

def rand_from_arr(arr,n)
	result = []
	n.times{
		result << arr[rand(arr.length)]
	}
	result
end
p rand_from_arr([1,2,3,4,5],2)