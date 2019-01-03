##- Find if a given number is a Kaprekar number.
# 55 is a Kaprekar 55^2 = 2530 {25+30 = 55}

def kaprekar_number?(number)
	count = number.to_s.size
	pow = (number**2).to_s
	first_haft = pow[(pow.length-count)..(pow.length-1)]
	second_haft = pow[0...(pow.length-(count))]
	number == first_haft.to_i + second_haft.to_i
end

p kaprekar_number?(9999)