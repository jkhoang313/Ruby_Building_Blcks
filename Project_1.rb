def caesar_cipher(string, shift)
	final = ""
	lower = ("a".."z").to_a
	upper = ("A".."Z").to_a

	string.each_char do |l|
		if lower.include?(l)
			final += lower[(lower.index(l) + shift)%26]
		elsif upper.include?(l)
			final += upper[(upper.index(l) + shift)%26]
		else
			final += l
		end
	end
	puts final
end

caesar_cipher("What a string!", 5)
