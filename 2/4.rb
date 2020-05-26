 # Хэш из гласных букв. Алфавит: abcdefghijklmnopqrstuvwxyz
 # Гласные:  aeiou
 #  
letters = ("a".."z").to_a
vowels = ["a","e","i","o","u"]
my_hash = {}
count = vowels.size
puts count
i=1
while i <= count do
  my_hash[vowels[i - 1]] = letters.index(vowels[i- 1]) + 1
  i+=1
end 

puts my_hash


