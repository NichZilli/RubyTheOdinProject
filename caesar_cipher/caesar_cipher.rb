def caesar_cipher(text, shift)
  result = ""
  
  for i in 0..text.length-1
    char = text[i]

    if char.upcase
      result += ((char.ord + shift-65) % 26 + 65).chr

    else
      result += ((char.ord + shift-97) % 26 + 97).chr
    end
  end

  result
end

puts "Ciphering..."

puts "Enter the text"
text = gets.gsub(/\s+/, "")
puts "Enter the shift"
shift = gets.to_i
shift = shift%26
puts "Cipher: #{caesar_cipher(text, shift)}"

puts "De-Ciphering..."

puts "Enter the text"
text_two = gets.gsub(/\s+/, "")
puts "Enter the shift"
shift_two = gets.to_i
shift_two = shift_two%26

 puts "De-Cipher: #{caesar_cipher(text_two, 26-shift_two)}"
