# День от начала года

days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print "Введите год (цифрой): "
year = gets.chomp.to_i
print "Введите месяц (цифрой): "
month = gets.chomp.to_i
print "Введите день (цифрой): "
day = gets.chomp.to_i

days_of_months[1] = 29 if ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
puts days_of_months[1]

result = days_of_months.first(month-1).sum + day

puts "Номер дня с начала года #{year} - #{result}"
