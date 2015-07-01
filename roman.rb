def to_roman(num)
  output = ''
  remainder = num
  while remainder > 0
    if remainder >= 1000
      output += "M"
      remainder -= 1000
    elsif remainder >= 500
      output += "D"
      remainder -= 500
    elsif remainder >= 100
      output += "C"
      remainder -= 100
    elsif remainder >= 50
      output += "L"
      remainder -= 50
    elsif remainder >= 10
      output += "X"
      remainder -= 10
    elsif remainder >= 5
      output += "V"
      remainder -= 5
    elsif remainder >= 1
        output += "I"
        remainder -= 1
    end
  end
    
  output
end

legend = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

#test code
puts "673 to roman: #{to_roman(673)}"
puts "4 to roman: #{to_roman(4)}"
puts "68873 to roman: #{to_roman(68873)}"
puts "44 to roman: #{to_roman(44)}"
puts "666 to roman: #{to_roman(666)}"