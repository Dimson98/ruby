  # Набить в массив числа Фибоначчи от 1 до 100
limit = 100
fib_arr = Array.new
a = 0
b = 1
fib_arr.push(a)
fib_arr.push(b)
while a + b < limit do
  fib_arr.push( a+b )
  c = b
  b = a + b
  a = c
end
puts fib_arr
