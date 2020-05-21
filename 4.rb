  # Квадратное уравнение

print "Укажите коэффициент А "
a = gets.to_f
print "Укажите коэффициент B "
b = gets.to_f
print "Укажите коэффициент C "
c = gets.to_f
d = b**2 - 4 * a * c
puts "#{d}"
if d < 0
  puts "Дискриминант равен #{d}. Корней нет."
elsif d == 0
  puts "Дискриминант равен #{d}. Корень равен #{(-b/(2 * a).to_f)} "
else d > 0 
  d_sqrt = Math.sqrt(d)
  x_1 = (-b + d_sqrt)/(2 * a).to_f
  x_2 = (-b - d_sqrt)/(2 * a).to_f
  puts "Дискриминант равен #{d}. Корни #{x_1} и #{x_2}"
end
