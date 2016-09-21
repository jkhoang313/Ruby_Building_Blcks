def stock_picker(array)
	min = ""
	max = ""
	difference = 0
	final_array = Array.new

	array.each do |mi|
		array.each do |ma|
			if ma - mi > difference && array.index(ma) > array.index(mi)
				max = ma
				min = mi
				difference = max - min
			end		
		end
	end
	final_array.push(array.index(min))
	final_array.push(array.index(max))
	puts final_array	
end	

stock_picker([17,3,6,9,15,8,6,1,10])

