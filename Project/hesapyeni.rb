# frozen_string_literal: true

def topla
  print 'Bir sayı giriniz: '
  say1 = gets.chomp.to_f
  puts '+'
  print 'Bir sayı daha giriniz: '
  say2 = gets.chomp.to_f
  puts say1 + say2
end

def cikar
  print 'Bir sayı giriniz'
  say1 = gets.chomp.to_f
  puts '-'
  print 'Bir sayı daha giriniz'
  say2 = gets.chomp.to_f
  puts say1 - say2
end

def carp
  print 'Bir sayı giriniz'
  say1 = gets.chomp.to_f
  puts '*'
  print 'Bir sayı daha giriniz'
  say2 = gets.chomp.to_f
  puts say1 * say2
end

def bol
  print 'Bir sayı giriniz'
  say1 = gets.chomp.to_f
  puts '/'
  print 'Bir sayı daha giriniz'
  say2 = gets.chomp.to_f
  puts say1 / say2
end

def cik
  exit
end

def prog
  puts 'işlemi seçiniz: 1 = TOPLAMA - 2=ÇIKARMA - 3=ÇARPMA - 4=BÖLME'
  puts 'Çıkmak İçin 5'
  until (string = gets.chomp).empty?
    secim = Integer(string, exception: false)
    if secim
      puts '...'
      return secim
    end

    print "Geçersiz sayı: #{string}.Lütfen tekrar girin: "
  end
end

loop do
  case prog
  when 1
    topla
  when 2
    cikar
  when 3
    carp
  when 4
    bol
  when 5
    cik
  end
end
