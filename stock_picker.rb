def stock_picker(days)
stocks = []
daysProfit =[]
dayOne = 0
dayTwo = 1

while stocks.length < days
  stocks << rand(1..20)
end

print stocks
puts

while dayTwo < days and dayOne < days-1 do
  daysProfit << [[dayOne , dayTwo] , stocks[dayTwo] - stocks[dayOne]]
  dayTwo += 1
  if dayTwo >= days
    dayOne += 1
    dayTwo = dayOne + 1
  end
end

print daysProfit.sort{|a,b| b[1] <=> a[1]}.first

end

print "How many days: "
puts stock_picker(gets.to_i)
