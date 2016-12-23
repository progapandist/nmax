require "nmax/version"

module Nmax
  def self.run
    n_numbers = ARGV.shift.to_i
    stream = ARGF
    puts self.process_numbers(n_numbers, stream)
  end

  def self.process_numbers(n, data)
    numbers = []
    data.each_line do |line|
      if matches = line.scan(/\d{1,1000}/)
        matches.each do |match|
          number = match.to_i
          numbers << number if numbers.empty?
          next if numbers.include?(number)
          if numbers.length < n
            numbers << number
          else
            numbers << number
            numbers.delete(numbers.min)
          end
        end
      end
    end
    numbers.sort.reverse
  end
end
