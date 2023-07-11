StringsError = Class.new StandardError

def uppercase_first_on_match(strings)
  string = strings.find { |string| string.include? 'a' }
  raise StringsError, 'At least one string must have an "a"' unless string

  string.upcase
end

def main
  puts uppercase_first_on_match ARGV
rescue ArgumentError => e
  abort "Programming error: #{e.message}"
rescue StringsError => e
  abort "Error occured: #{e.message}"
end

main