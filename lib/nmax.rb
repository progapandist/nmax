require "nmax/version"

module Nmax
  n_numbers = ARGV.shift.to_i
  numbers = []
  ARGF.each_line do |line|
    if matches = line.match(/\d{1,1000}/).to_a
      matches.each { |number| numbers << number.to_i }
    end
  end
  puts numbers.uniq.sort.reverse[0..n_numbers - 1]
end
