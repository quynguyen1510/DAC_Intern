## Check if all elements in an array are Fixnum
# - Problem Statement: Given an array, return true if all the elements are Fixnums.
# - Example: Given [1,2,3], the method should return true

def check_fixnum?(values)
	values.all?{ |i|
		i.is_a? Fixnum
	}
end

p check_fixnum?([1,2,3])