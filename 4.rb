  # Квадратное уравнение

  print "Укажите коэффициент А "
  a = gets.to_i
  print "Укажите коэффициент B "
  b = gets.to_i
  print "Укажите коэффициент C "
  c = gets.to_i
  d = b**2 - 4 * a * c
  puts "#{d}"
  if d < 0 then puts "Дискриминант равен #{d}. Корней нет."
  end
  if d == 0 then puts "Дискриминант равен #{d}. Корень равен #{(-b/(2 * a).to_f)} "
  end
  if d > 0 then
    x_1 = (-b + Math.sqrt(d))/(2 * a).to_f
    x_2 = (-b - Math.sqrt(d))/(2 * a).to_f
  puts "Дискриминант равен #{d}. Корни #{x_1} и #{x_2}"
  end
