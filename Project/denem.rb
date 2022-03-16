cities_with_a = []

%w[samsun istanbul izmir adana].each do |city|
  cities_with_a << city if city.include? 'a'
end

puts cities_with_a