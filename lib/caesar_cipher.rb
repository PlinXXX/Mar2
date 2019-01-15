def caesar_cipher(word, shift)
	for i in 0...word.length

		if word[i].ord > 96 && word[i].ord < 123 #Si la lettre est minuscule
			if (word[i].ord + shift) >= 122
				word[i] = (word[i].ord - (26 - shift)).chr
			else
				word[i] = (word[i].ord + shift).chr
			end
		
		elsif word[i].ord > 64 && word[i].ord < 91 #Si la lettre est majuscule
			if (word[i].ord + shift) >= 90
				word[i] = (word[i].ord - (26 - shift)).chr
			else
				word[i] = (word[i].ord + shift).chr
			end
		end
	end
	return word
end