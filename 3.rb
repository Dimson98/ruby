  # Прямоугольный треугольник
print "Укажите сторону_1 треугольника (в принятых единицах) "
first_side = gets.chomp
print "Укажите сторону_2 треугольника (в принятых единицах) "
second_side = gets.chomp
print "Укажите сторону_3 треугольника (в принятых единицах) "
third_side = gets.chomp

if (first_side == second_side) && (second_side == third_side)
  puts "Ваш треугольник равносторонний и равнобедренный"
end
if (first_side == second_side) || (second_side == third_side) || (first_side == third_side)
  puts "Ваш треугольник равнобедренный"

elsif  array = [first_side.to_i,second_side.to_i,third_side.to_i].sort
  if (array[2]**2 == (array[1]**2 + array[0]**2)) 
    puts "Ваш треугольник прямоугольный"
  else puts "Ваш треугольник никакой"
end
