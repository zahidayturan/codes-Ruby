# frozen_string_literal: true

print "3 kenarı bilinen bir üçgenin geçerliliğini kontrol etmek için a,b,c kenarlarını değerini giriniz.\n"
print 'Lütfen bir a değeri giriniz: '
a = gets.to_i
print 'Lütfen bir b değeri giriniz: '
b = gets.to_i
print 'Lütfen bir c değeri giriniz: '
c = gets.to_i
def validate_triangle(a, b, c)
  a + b > c && a + c > b && b + c > a
end

if validate_triangle(a, b, c)
  puts 'Geçerli bir üçgen'
else
  puts 'Geçerli bir üçgen değil'
end
