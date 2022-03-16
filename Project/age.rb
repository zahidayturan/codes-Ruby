# frozen_string_literal: true

print 'Yaş giriniz: '
yas = gets.to_i
puts "Hoş geldiniz yaşınız: #{yas}" unless yas >= 18
puts "Hoş gelmediniz yaşınız: #{yas}"
