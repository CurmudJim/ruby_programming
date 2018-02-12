def caesar_cipher(word,offset)
  wordIndex = 0
  rangeCap = (65..90).to_a
  rangeLow = (97..122).to_a
  newWord = ""

  def offsetNumber(array , string , index, number)
    return array.rotate(string[index].ord-array[0]).rotate(number)[0]
  end
  while wordIndex < word.length do
    if rangeCap.include?(word[wordIndex].ord)
      newWord += offsetNumber(rangeCap , word , wordIndex, offset).chr
    elsif rangeLow.include?(word[wordIndex].ord)
      newWord += offsetNumber(rangeLow , word , wordIndex, offset).chr
    else
      newWord += word[wordIndex]
    end
    end
      wordIndex += 1
  end
  return(newWord)
end

print "Enter word or phrase: "
string = gets
print "Enter integer: "
integer = gets.to_i
puts caesar_cipher(string , integer)
