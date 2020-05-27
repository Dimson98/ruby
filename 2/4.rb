 # Хэш набиваем гласными буквами в качесвте ключа и их порядковыми номерами в алфавите в качесвте значения.
 # Алфавит: abcdefghijklmnopqrstuvwxyz
 # Гласные:  aeiou
 # {"a"=> 1 и так далее}
letters = ("a".."z").to_a
vowels = ["a","e","i","o","u"]
my_hash = {}
count = vowels.size
puts count
i=1
while i <= count do
  my_hash[vowels[i-1]] = letters.index(vowels[i-1]) + 1
  i+=1
end

puts my_hash
puts my_hash["i"]

my_hash.each do |vowel, number|
  puts "#{vowel} имеет номер #{number}"
end
