# Товары разные положить в корзину.
# Хэш вида  big_hash = {"колбаса"=> {price: 120, qty: 30}, "хлеб"=> {price: 80, qty: 2 }}

all_products = {}
one_product = {}
sum = 0
loop do

  print "Введите наименование товара: "
  title = gets.chomp
  break if title == "стоп"

  print "Введите цену за единицу товара: "
  price = gets.chomp.to_f
  one_product["price"] = price

  print "Введите количество товара: "
  qty = gets.chomp.to_f
  one_product["qty"] = qty
  one_product["sum"] = qty * price
  sum += one_product["sum"]

  all_products[title] = one_product

  puts one_product

end
puts all_products
puts "Вы собрали корзинку на #{sum}"
