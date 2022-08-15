# Function for the Caesar Cipher Cryptography
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

# Making the Encrypt Method
puts "Ciphering..."

puts "\nEnter the text"
text = gets.gsub(/\s+/, "") # Remove all trailing and whitespace
puts "Enter the shift"
shift = gets.to_i
shift = shift%26 # Ensure that shift is in the range (0..25)
puts "Cipher: #{caesar_cipher(text, shift)}"

# Making the Decrypt Method
puts "\nDe-Ciphering..."

puts "\nEnter the text"
text_two = gets.gsub(/\s+/, "")
puts "Enter the shift"
shift_two = gets.to_i
shift_two = shift_two%26

 puts "De-Cipher: #{caesar_cipher(text_two, 26-shift_two)}"
