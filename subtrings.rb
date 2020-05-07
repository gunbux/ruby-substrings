def substrings(string,dictionary)
  #Check if string is of type String and dictionary is of typer Array
  return 'TypeError' if !string.is_a?(String) || !dictionary.is_a?(Array  )
  
  result = Array.new

  #Change all the cases of the string to lowercase
  string = string.downcase

  #Using the string, generate all possible subwords into an Array
  #Compare every element with the dictionary Array
  for i in 0...string.length
    for g in 1..string.length-i
      #puts "g is currently #{g} and i is currently #{i}"
      checker = string[i,g]
      #puts checker
      if dictionary.include?(checker)
        result.push(checker)
        #puts "Result found, i is at #{i} and g is at #{g} and word is #{checker}"
      end
    end
  end
  #Save the elements somewhere and return it
  
  return result
end

def subsentence(sentence,dictionary)

  results = Hash.new

  #Make everything lowercase -- not neccesary since it's already done in substrings methods
  #Remove the punctuation -- Replace all punctuation with space
  sentence = sentence.gsub(',',' ')
  sentence = sentence.gsub('.',' ')
  sentence = sentence.gsub('?',' ')
  sentence = sentence.gsub('!',' ')
  sentence = sentence.gsub('\'',' ')
  #Convert the sentence into a list of words
  list_of_words = sentence.split
  puts "List of words from sentence is #{list_of_words}"
  #Run it through the substring methods and combine the results
  list_of_words.each do |word|
    word_result = substrings(word,dictionary)
    word_result.each do |answer|
      if !results.include?(answer)
        results[answer] = 0
      end
      results[answer] += 1
    end
  end
  return results
end

#Test case to check for TypeError
#puts substrings(1,2)
#
#Test case to check for checker
#puts substrings('circle',[1,2,3])
#
#Test case for accurate results
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#print subsentence('below',dictionary)
#print subsentence("Howdy partner, sit down! How's it going?",dictionary)
#
#All test cases complete
