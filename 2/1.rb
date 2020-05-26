  # хэш месяцы: количество дней в месяцу = 30

my_hash =  {"jan" => 31,"feb" => 28,"mar" => 31,"apr" => 30,"may" => 31,"jun" => 30,"jul" => 31,"aug" => 31,"sep" => 30,"oct" => 31,"now" => 30,"dec" => 31}

# puts my_hash.values
# my_hash.each_value {|value| puts value }
# my_hash.each_key {|key| puts key }

my_hash.each {|key,value| if value == 30 then puts "#{key} => #{value}" end }
