
def flat(arr, result = [])

	arr.each do |item|
		if item.kind_of?(Array)
			flat(item, result)
		else
			result << item
		end
	end
	result

end

puts flat( [[1,2],[3,4]] )
puts flat([[1, [8,9]], [3,4]])