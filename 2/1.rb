  # хэш месяцы: количество дней в месяцу = 30

year_hash =  {"jan" => 31,"feb" => 28,"mar" => 31,"apr" => 30,"may" => 31,"jun" => 30,"jul" => 31,"aug" => 31,"sep" => 30,"oct" => 31,"now" => 30,"dec" => 31}

# puts my_hash.values
# my_hash.each_value {|value| puts value }
# my_hash.each_key {|key| puts key }

year_hash.each {|month,days|  puts "#{month} => #{days}" if days == 30 }
