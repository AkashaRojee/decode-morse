def decode_morse_char(morse_char)
  morse_to_char = {
    '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5',
    '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9', '.-' => 'a', '-...' => 'b',
    '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f', '--.' => 'g', '....' => 'h', '..' => 'i',
    '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w',
    '-..-' => 'x', '-.--' => 'y', '--..' => 'z', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?',
    '-.-.--' => '!', '-....-' => '-', '-..-.' => '/', '.--.-.' => '@', '-.--.' => '(', '-.--.-' => ')'
  }
  morse_to_char[morse_char]
end

def decode_morse_word(morse_word)
  decoded_word = ''

  morse_word.split.each do |char|
    decoded_word = "#{decoded_word}#{decode_morse_char(char)}"
  end

  decoded_word
end

def decode_morse_message(morse_message)
  decoded_message = ''

  morse_message.split('   ').each do |word|
    decoded_message = "#{decoded_message}#{decode_morse_word(word)}"
  end

  decoded_message
end

puts decode_morse_message "      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...\n"
