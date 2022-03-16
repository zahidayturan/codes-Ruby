# frozen_string_literal: true

# exa.rb

# S =(X/1!) + (X^2/2!) + (X^3/3!) + .... AÇILIMININ "x; 0<x<1" için İLK 10 TERİMİNİN TOPLAMI
sonuc = 0
puts 'Lütfen bir sayı giriniz: '
sayi = gets.chomp.to_f

if sayi <= 0 || sayi >= 1
  puts 'Sayınızı 0<x<1 aralığında girmelisiniz'
  return
else
  fakt = 1
  ara = 1
  while ara <= 3
    fakt *= ara
    terim = (sayi**ara).fdiv(fakt)
    sonuc += terim
    ara += 1
  end
end

puts "#{sayi} sayısının açılımdaki ilk 10 terimin toplamı #{sonuc.round(5)}"
