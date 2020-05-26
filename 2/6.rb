# Товары разные положить в корзину.
# Хэш вида  big_hash = {"колбаса"=> {price: 120, qty: 30}, "хлеб"=> {price: 80, qty: 2 }}

big_hash = {}
small_hash = {}
sum = 0
while 1==1 do

print "Введите наименование товара: "
input_g = gets.chomp
if input_g == "стоп" then
  break
end

print "Введите цену за единицу товара: "
input_price = gets.chomp.to_f
small_hash["price"] = input_price

print "Введите количество товара: "
input_qty = gets.chomp.to_f
small_hash["qty"] = input_qty
small_hash["sum"] = input_qty * input_price
sum += small_hash["sum"]

big_hash[input_g] = small_hash

puts small_hash

end
puts big_hash
puts "Вы собрали корзинку на #{sum}"


