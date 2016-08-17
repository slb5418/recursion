
def factorial(n)
	
	# basecase if n = 0
	if n == 0
		return 1
	else

	# 10 * 9 * 8 * 7 

	# n * n-1 *  n-2 

		n * factorial(n-1)

	end
end

print factorial(10)