def caesar_cipher(string, n)
  arr_key = string.gsub(" ","").split(//)

  arr_value = []
  arr_key.each do |item|  
  	if (item.ord + n) > 122
  	  shift = n - (122 - item.ord)
  	  tmp = 96 + shift
  	  arr_value << tmp
  	else if (item.ord + n) > 90 && (item.ord + n) < 97
  	  shift = n - (90 - item.ord)
  	  tmp = 64 + shift
  	  arr_value << tmp
  	else if item =~ /[^a-zA-z]/
  	  arr_value << item	
	    else 
	  	  arr_value << item.ord + n
	    end
	  end
    end
  end
  
  result = []
  arr_value.each { |item|  
    result << item.chr	
  }
  p result.join
end

caesar_cipher("What a string!",5)
