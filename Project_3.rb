dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
	final = {}
	string_array = string.downcase.split(" ")
 	count = 0

	array.each do |a|
		string_array.each do |s|
			count +=1 if s.include?(a)
		end
		final[a] = count if count > 0
		count = 0
	end
	
	puts final
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
