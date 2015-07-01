def to_roman(num)
  output = ''
  remainder = num
  while remainder > 0
    if remainder >= 1000
      output += "M"
      remainder -= 1000
    elsif remainder >= 500
      if remainder >= 900
        output += "CM"
        remainder -= 900
      else
        output += "D"
        remainder -= 500
      end
    elsif remainder >= 100
      if remainder >= 400
        output += "CD"
        remainder -= 400
      else
        output += "C"
        remainder -= 100
      end
    elsif remainder >= 50
      if remainder >= 90
        output += "XC"
        remainder -= 90
      else
        output += "L"
        remainder -= 50
      end
    elsif remainder >= 10
      if remainder >= 40
        output += "XL"
        remainder -= 40
      else
        output += "X"
        remainder -= 10
      end
    elsif remainder >= 5
      if remainder == 9
        output += "IX"
        remainder -= 9
      else
        output += "V"
        remainder -= 5
      end
    elsif remainder >= 1
      if remainder == 4
        output += "IV"
        remainder -= 4
      else
        output += "I"
        remainder -= 1
      end
    end
  end
    
  output
end


#test code
puts "673 to roman: #{to_roman(673)}"
puts "4 to roman: #{to_roman(4)}"
puts "1994 to roman: #{to_roman(68873)}"
puts "44 to roman: #{to_roman(44)}"
puts "666 to roman: #{to_roman(666)}"