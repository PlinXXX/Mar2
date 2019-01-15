dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

###################DECOMPOSEUR DE MOT####################
	def decompose(word)
		word_decompose = []
		w = ''
		for j in 0...word.length
			w = ''
			for i in j...word.length
				w = w + word[i]
				word_decompose << w
			end
		end
		return word_decompose
	end
#########################################################


def number_of_word(word, dictionary)
	number_of_word = 0
	dictionary.each { |w| number_of_word += 1 if w == word }
	return number_of_word
end


def word_counter(word, dictionary)

	char_in_word = []
	times = []
	word_decompose = decompose(word)
		word_decompose.each do |word|  
			if dictionary.include?(word)
				char_in_word << word

				times << number_of_word(word, dictionary)
			end
		end
	puts char_in_word.inspect
	puts times.inspect 
	recap = Hash[char_in_word.zip(times)]
	recap.each do
		#NOT FINISHED
		word_and_repetition
	end
	puts word_and_repetition.inspect
end

word_counter("Howdy partner, sit down! How's it going?", dictionary)