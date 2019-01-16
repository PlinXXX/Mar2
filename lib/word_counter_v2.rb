shakespeare = File.open("shakespeare.txt", "r")
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
=begin
				ok=false
				fic.each_line { |ligne|
					puts "ligne lue: "+ligne
				}

	
	void = Array.new(dictionnary.length, 0)
	frequency = Hash[dictionnary.zip(void)]
	
	#count the words
	shakespeare.each do |key|
		frequency[key] += 1 if dictionnary.include?(key)
	end
=end
puts File.mtime("shakespeare.txt")

