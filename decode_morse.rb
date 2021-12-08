def decode_char(char)
  @morse_to_char = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h',
    '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0'
  }
  @result = @morse_to_char[char]
  if @result.nil?
    ' '
  else
    @result
  end
end

def decode_word(word)
  word = word.split
  result = ''
  word.each do |char|
    result += decode_char(char)
  end
  result
end

def decode_message(message)
  message = message.split('   ')
  result = []
  message.each do |char|
    result.push(decode_word(char))
  end
  result.join(' ')
end

puts decode_message('-- -.--   -. .- -- .')

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
