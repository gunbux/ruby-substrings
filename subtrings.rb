def substrings(string,dictionary)
  #Check if string is of type String and dictionary is of typer Array
  return 'TypeError' if !string.is_a?(String) || !dictionary.is_a?(Array  )
  
  #Change all the cases of the string to lowercase
  string = string.downcase

  #Using the string, generate all possible subwords into an Array
  #Compare every element with the dictionary Array
  
  #Save the elements somewhere and return it
end

#Test case to check for TypeError
#puts substrings(1,2)
