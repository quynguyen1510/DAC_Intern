## Find non-duplicate values in an Array
# - Problem Statement: Given an Array, return the elements that are present exactly once in the array.
# - Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]

def non_duplicated_values(values)
  p values.select{ |i|
      values.count(i) == 1
  	}
end

non_duplicated_values( [1,2,2,3,3,4,5])