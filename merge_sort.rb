def merge_sort(arr)
	## basecase - return the array if the length is <= 1
	return arr if arr.length <= 1

	# recursive case - continue diving arrays into two parts
	mid = arr.length/2
	left = merge_sort(arr[0...mid])
	right = merge_sort(arr[mid..-1])

	# merge
	result = []

	until left.empty? || right.empty?
		left.first < right.first ? result << left.shift : result << right.shift
	end
	
	result += left + right
	return result
end

p merge_sort([80249,25,354,46537,96,987,3465,8,3245,876,78,5465,987,46,876,9])
