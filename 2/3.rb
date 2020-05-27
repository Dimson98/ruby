  # Набить в массив числа Фибоначчи от 1 до 100
limit = 100
fib_arr = [0,1,1]
i = 1
while (fib_arr[i] + fib_arr[i-1] < limit ) do
  fib_arr[i+1] = fib_arr[i] + fib_arr[i-1]
  i+=1
end
puts fib_arr
