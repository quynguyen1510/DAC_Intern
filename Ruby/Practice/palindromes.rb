## Palindromes (strings)
# - Given a sentence, return true if the sentence is a palindrome.
# - Note: Ignore whitespace and cases of characters.
# - Example: Given "Never odd or even" the method should return true

def palindromes?(sentence)
	string = sentence.downcase.gsub(" ","")
	string.reverse
	string == string.reverse
end

p palindromes?("Never odd or even")