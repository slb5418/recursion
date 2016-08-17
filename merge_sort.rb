def merge_sort(arr)
	## basecase - return the array if the length is <= 1
	return arr if arr.length <= 1

	mid = arr.length/2
	left = arr[0...mid]
	right = arr[mid..-1]

	# recursive case - continue diving arrays into two parts
	left = merge_sort(left)
	right = merge_sort(right)

	# finally, merged the sorted lists
	return merge(left, right)
end

def merge(left, right)

	result = []

	while not left.empty? and not right.empty?
		left.first < right.first ? result << left.shift : result << right.shift
	end

	if not left.empty?
		while not left.empty?
			result << left.shift
		end
	end

	if not right.empty?
		while not right.empty?
			result << right.shift
		end
	end	

	return result

end

p merge_sort([80249,25,354,46537,96,987,3465,8,3245,876,78,5465,987,46,876,9])
