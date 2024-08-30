# ASCII Values for lowercase is 97 (a) to 122 (z)
# Uppercase is 65 (A) to 90 (Z)
# Space is 32

def caeserCipher(string, shift)
  result = ''
  characters = string.split('')
  asciiValues = characters.map do |letter|
    letter.ord
  end

  shiftedValues = asciiValues.map do |integer|
    if integer == 32
      integer
    else
      integer + shift
    end
  end

  shiftedValues.map do |integer|
    integer -= 26 if integer > 122 || (integer > 90 && integer < 97)
    result += integer.chr
  end

  puts 'Encoded Text:'
  puts result
end

puts 'Please key in the string you would like to shift:'
string = gets.chomp
puts 'How much would you like to shift it by?'
shift = gets.chomp.to_i
caeserCipher(string, shift)
