def fibs(n)
	result = []
	return result if n == 0
	result << 0
	return result if n == 1
	result << 1
	return result if n == 2
	while result.length < n
		result << result[-1] + result[-2]
	end
	result
end

def fibs_rec(n)
	return [0] if n == 1
	return [0,1] if n == 2
	result = fibs_rec(n - 1)
	result << result[-1] + result[-2] 
end
