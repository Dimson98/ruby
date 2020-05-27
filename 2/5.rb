# День от начала года

qty_of_days = [31,28,31,30,31,30,31,31,30,31,30,31].to_a

print "Введите год (цифрой): "
year = gets.chomp.to_i
print "Введите месяц (цифрой): "
month = gets.chomp.to_i
print "Введите день (цифрой): "
day = gets.chomp.to_i

qty_of_days[1] = 29 if ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
puts qty_of_days[1]

result = 0
i=1

while i < month do

  result = result + qty_of_days[i - 1]
  result = result + day
  i+=1
end



puts "Номер дня с начала года #{year} - #{result}"
