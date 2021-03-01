class RomanNumeralGenerator
  ROMAN = {1000 => 'M', 900 => 'CM', 500 => "D", 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
  def self.numeralize(int)
    current = int
    keys = ROMAN.keys
    roman = ""
    pointer = 0
    while current > 0
      keys.each.with_index do |num, ind|
        if current - num == 0
          roman += ROMAN[num]
          return roman
        elsif current - num > 0
          roman += ROMAN[num]
          current -= num
          break
        else
          pointer = ind + 1
        end
      end
      keys = keys[pointer..]
      pointer = 0
    end
    roman
  end
end
