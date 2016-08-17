def append( arr, n )
	if n > 0
		arr << n-1
		append(arr, n-1)
	end
	return arr
end

append [], 3 # => [2,1,0]

puts append([], 3)


def reverse_append(arr, n)
	return arr if n < 0
	reverse_append(arr, n-1)
	arr << n
	arr
end

reverse_append([], 2)