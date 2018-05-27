class CaesarCipher
  def initialize(string, shift = 13)
    @string = string
    alphabet = ('a'..'z').to_a.join
    caps_alphabet = ('A'..'Z').to_a.join
    i = shift % alphabet.size
    @alphabet = alphabet
    @encrypt = alphabet[i..-1] + alphabet[0...i]
    @caps_alphabet = caps_alphabet
    @caps_encrypt = caps_alphabet[i..-1] + caps_alphabet[0...i]
  end

  def perform()
    @result = ""
    chars = @string.split('')
    chars.each do |letter|
      if @alphabet.include? letter
        @result << letter.tr(@alphabet, @encrypt)
      elsif @caps_alphabet.include? letter
        @result << letter.tr(@caps_alphabet, @caps_encrypt)
      else
        @result << letter
      end
    end
    @result
  end

end
