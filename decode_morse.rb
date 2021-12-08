def decode_char(char)
  @morse_to_char = {
    ".-" =>    "a",
    "-..." =>  "b",
    "-.-." =>  "c",
    "-.." =>   "d",
    "." =>     "e",
    "..-." =>  "f",
    "--." =>   "g",
    "...." =>  "h",
    ".." =>    "i",
    ".---" =>  "j",
    "-.-" =>   "k",
    ".-.." =>  "l",
    "--" =>    "m",
    "-." =>    "n",
    "---" =>   "o",
    ".--." =>  "p",
    "--.-" =>  "q",
    ".-." =>   "r",
    "..." =>   "s",
    "-" =>     "t",
    "..-" =>   "u",
    "...-" =>  "v",
    ".--" =>   "w",
    "-..-" =>  "x",
    "-.--" =>  "y",
    "--.." =>  "z",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
    "-----" => "0",
  }
  return @morse_to_char[char]
end

def decode_word(word)
  word = word.split(' ')
  result = ''
  word.each { |char|
    result = result + decode_char(char)
  }
  return result
end


def decode_message(word)
  word = word.split('   ')
  result = []
  word.each { |char|
    result.push(decode_word(char))
  }
  return result.join(' ')
end
 puts decode_message("-- -.--   -. .- -- .")
