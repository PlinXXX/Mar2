price_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
=> [1,4]   $15 - $3 == $12

def day_trader(price_array)
	max = 0
	result = []
	for i in 0...price_array.length
		for j in i...price_array.length
			if (price_array[j] - price_array[i]) > max
				max = (price_array[j] - price_array[i]) 
				buy_day = i
				sell_day = j
			end
		end
	end
	result << buy_day
	result << sell_day

	return result
end