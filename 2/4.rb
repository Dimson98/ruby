 # Хэш набиваем гласными буквами в качесвте ключа и их порядковыми номерами в алфавите в качесвте значения.
 # Алфавит: abcdefghijklmnopqrstuvwxyz
 # Гласные:  aeiou
 # {"a"=> 1 и так далее}
letters = ("a".."z").to_a
vowels = ["a", "e", "i", "o", "u"]
my_hash = {}
vowels.each do |vowel|
  my_hash[vowel] = letters.index(vowel) + 1
end

puts my_hash
