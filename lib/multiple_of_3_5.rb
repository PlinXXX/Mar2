=begin
Si on liste tous les entiers naturels strictement inférieurs à 11 
et qui sont multiples de 3 ou 5, on obtient 3, 5, 6, 9 et 10.
La somme de ces nombres est égale à 33.
=> Trouve la somme des entiers naturels strictement inférieurs à 1000 
et qui sont multiples de 3 ou 5.
=end

def is_multiple_of_3_or_5?(number)
	return true if number % 3 == 0 || number % 5 == 0
	return false
end

def sum_of_3_or_5_multiples(n)
  # plein de calculs
  if (n.to_i < 0) || (!n.is_a? Integer)
  	sum = "Yo ! Je ne prends que les entiers naturels. TG" 
  else
  	sum = 0
  	for i in 1...n
  		sum += i if is_multiple_of_3_or_5?(i)
  	end
  end

  return sum
end




