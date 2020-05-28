# Товары разные положить в корзину.
# Хэш вида  big_hash = {"колбаса"=> {price: 120, qty: 30}, "хлеб"=> {price: 80, qty: 2 }}

all_products = {}
sum = 0
loop do

  print "Введите наименование товара: "
  title = gets.chomp
  break if title == "стоп"

  print "Введите цену за единицу товара: "
  price = gets.chomp.to_f


  print "Введите количество товара: "
  qty = gets.chomp.to_f

  all_products[title] = {price: price, quantity: qty, sum: qty * price}
  sum += all_products[title][:sum].to_f

end
puts all_products
puts "Ваши покупки на #{sum}"
