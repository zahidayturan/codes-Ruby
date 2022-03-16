# frozen_string_literal: true

a = [2, 5, 3, 1, 4]
b = a.sort { |a, b| a <=> b }
puts b

exit

a = [2, 5, 3, 1, 4]

b = a.sort do |a, b|
  if a > b
   -1
  elsif a < b
    1
  else
    0
  end
end

puts b
exit

puts [1, 2, 3, 4, 5].sort { |a, b| b <=> a }

exit

puts %w[ant bear cat].all? { |word| word.length >=3 }
puts %w[ant bear cat].any? { |word| word.length >=3 }
puts %w[ant bear cat].one? { |word| word.length >=3 }
puts %w[ant bear cat].none? { |word| word.length >=3 }

exit

puts [1, 2, 3, 4, 5].map { |num| num**2 }
puts %w[foo bar].map { |str| str.upcase}
# puts %w[foo bar].map {&:upcase}
exit

a = [1, 2, 3, 4, 5]
b = []
a.each { |e| b << e * e } 

puts 'kareler'
puts b

exit

a = [1, 2, 3, 4, 5]
puts 'çiftler'
puts a.select { |e| e.even? } # tekler için odd?

exit

a = [1, 2, 3, 4, 5]
b = []
a.each { |e| b << e if e.even? } # tekler odd?

puts 'çiftler'
puts b
