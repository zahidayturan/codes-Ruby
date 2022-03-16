# frozen_string_literal: true

def yeni_yil
  a = 3
  until a <= 1
    puts "Yeni yıla son #{a}"
    sleep(1)
    a -= 1
  end
  puts "Yeni yıl !!!"
end
yeni_yil

b = 3
until b <= 1
  3.times do
   puts "Yeni yıla son #{b}"
   b -= 1
 end
end
