def formata(string)
  string.downcase.gsub(/\s+/, '')
end

def substrings(string, dictionary)
  dictionary_hash = {}

  dictionary.each do |key|
    value = string.scan(key).length
    dictionary_hash[key] = value unless value.zero?
  end
  dictionary_hash
end

dictionary = %w[ruby on rails]
string = 'ruby on rails is the best framework of ruby!'
string = formata(string)

puts substrings(string, dictionary)
