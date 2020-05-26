  # Задача определения идеального весв

print "Как Вас звать ? "
name = gets.chomp
print "Укажите свой рост в сантиметрах ? "
height = gets.chomp
weight = (height.to_i-110) * 1.15
if weight < 0
  puts "Ваш вес уже оптимальный"
else
  puts "#{name} ! Ваш идеальный вес будет: #{weight}"
end
