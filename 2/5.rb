# День от начала года

qty_of_days = [31,28,31,30,31,30,31,31,30,31,30,31]

print "Введите год (цифрой): "
year = gets.chomp.to_i
print "Введите месяц (цифрой): "
month = gets.chomp.to_i
print "Введите день (цифрой): "
day = gets.chomp.to_i

result = 0
i=1

while i < month do

  result = result + qty_of_days[i - 1]
  result = result + day
  i+=1
end

if month > 2

if (year % 4 == 0) && (year % 100 == 0) && (year % 400 != 0)
 result +=1
end
end

puts "Номер дня с начала года #{year} - #{result}"


