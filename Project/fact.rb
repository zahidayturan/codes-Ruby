# frozen_string_literal: true

# fact.rb

# 1*fakt---2*fakt'---...---n-1*fakt'''---n*fakt'''':'

puts 'Lütfen faktöriyel alınacak sayıyı giriniz: '
n = gets.chomp.to_i

fakt = 1
if n.negative?
  puts "Sayınız (#{n}) negatif olmamalı"
  return
end

if n.zero?
  puts '0 faktöriyel 1 dir.'
else
  sayac = 1
  while sayac <= n
    fakt *= sayac
    sayac += 1
  end
end

puts "Sayı #{n}"
puts "Faktöriyel sonucu #{fakt}"

# frozen_string_literal: true

# fact.rb

#-----------------------------------------------------

# n*fakt---n-1*fakt'---n-2*fakt''---...---1*fakt'''':'

puts 'Lütfen faktöriyel alınacak sayıyı giriniz: '
n = gets.chomp.to_i

fakt = 1
if n.negative?
  puts "Sayınız (#{n}) negatif olmamalı"
  return
end

if n.zero?
  puts '0 faktöriyel 1 dir.'
else
  sayac = n
  while sayac >= 1
    fakt *= sayac
    sayac -= 1
  end
end

puts "Sayı #{n}"
puts "Faktöriyel sonucu #{fakt}"
