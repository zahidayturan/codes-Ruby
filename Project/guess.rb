# frozen_string_literal: true

# guess.rb

random_num = rand(100)
num_of_guesses = 0

print('Merhaba, ismini öğrenebilir miyim ? ')
name = gets.chomp
name = name.capitalize {}

while num_of_guesses < 10
  print("\n 1 ve 100 arasında bir sayı tahmin et. Doğru sayıyı bulmak için 10 hakkın var : ")
  guess_num = gets.to_i

  num_of_guesses += 1
  # şu da yazılabililir : num_of_guesses = num_of_guesses +1
  guesses_left = (10 - num_of_guesses)

  if guess_num < random_num
    puts("#{name}, Tahminin az, Daha yüksek bir sayı gir. SON #{guesses_left} HAKKIN KALDI.")
  elsif guess_num > random_num
    puts("#{name}, Tahminin fazla, Daha düşük bir sayı gir. SON #{guesses_left} HAKKIN KALDI.")
  end

  break if guess_num == random_num
end

if guess_num == random_num
  puts("İyi iş, #{name}! #{num_of_guesses} denemede buldun.")
else
  puts("#{name}, doğru tahmini yapamadın. Doğru numara #{random_num}.")
end
