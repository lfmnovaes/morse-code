require_relative 'morse_code_methods'

puts decode('-- -.--   -. .- -- .') # my name
puts decode(
       '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...',
     ) # a box full of rubies
puts encode('hello world') # .... . .-.. .-.. ---    .-- --- .-. .-.. -..
puts encode('lorem ipsum') # .-.. --- .-. . --    .. .--. ... ..- --
