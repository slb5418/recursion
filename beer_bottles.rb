
def beer_bottles (n)

	if n == 0
		puts "no more bottles of beer on the wall"
	else
		puts "#{n} more bottles of beer on the wall"
		beer_bottles(n-1)
	end
end

beer_bottles(10)

