def substring(my_string)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  frequencies = Hash.new(0)
  dictionary.each { |x| frequencies[x] += my_string.downcase.scan(/(?=#{x})/).count if my_string.downcase.include? x }

  print frequencies
end

print "Enter word or phrase: "
string = gets
puts substring(string)
