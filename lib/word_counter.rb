@dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

###################DECOMPOSEUR DE MOT####################
	def decompose(word)
		word_decompose = []
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

def word_counter(word, dictionnary)

	word_decompose = decompose(word)
	word_decompose.map!(&:downcase)
	word_decompose.keep_if {|mot| @dictionnary.include?(mot)}

	#create the hash where you put the words
	char_in_word = word_decompose
	void = Array.new(char_in_word.length, 0)
	h = Hash[char_in_word.zip(void)]
	
	#count the words
	char_in_word.each do |key|
		h[key] += 1
	end

	return h
end

puts word_counter("Howdy partner, sit down! How's it going?", @dictionnary)