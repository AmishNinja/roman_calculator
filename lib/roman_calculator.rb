class RomanCalculator

  def self.add(numeral_one, numeral_two)
    prepare(numeral_one + numeral_two).tap do |concat|
      concat.gsub!('IIIII','V')
      concat.gsub!('VV', 'X')
      concat.gsub!('XXXXX', 'L')
      concat.gsub!('LL', 'C')
    end
  end

  def self.prepare(numeral)
    numeral.chars.sort.reverse.join
  end

end
