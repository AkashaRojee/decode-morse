def decode_morse_char(morse_char)
  morse_to_char = {
    "-----" => "0",
    ".----" => "1",
    "..---" => "2",
    "...--" => "3",
    "....-" => "4",
    "....." => "5",
    "-...." => "6",
    "--..." => "7",
    "---.." => "8",
    "----." => "9",
    ".-" => "a",
    "-..." => "b",
    "-.-." => "c",
    "-.." => "d",
    "." => "e",
    "..-." => "f",
    "--." => "g",
    "...." => "h",
    ".." => "i",
    ".---" => "j",
    "-.-" => "k",
    ".-.." => "l",
    "--" => "m",
    "-." => "n",
    "---" => "o",
    ".--." => "p",
    "--.-" => "q",
    ".-." => "r",
    "..." => "s",
    "-" => "t",
    "..-" => "u",
    "...-" => "v",
    ".--" => "w",
    "-..-" => "x",
    "-.--" => "y",
    "--.." => "z",
    ".-.-.-" => ".",
    "--..--" => ",",
    "..--.." => "?",
    "-.-.--" => "!",
    "-....-" => "-",
    "-..-." => "/",
    ".--.-." => "@",
    "-.--." => "(",
    "-.--.-" => ")"
  }
  morse_to_char[morse_char]  
end

def decode_morse_word(morse_word)
  _decoded_word = ""

  morse_word.split(" ").each do |char|
    _decoded_word = "#{_decoded_word}#{decode_morse_char(char)}"
  end

  _decoded_word
end

def decode_morse_message(morse_message)
  _decoded_message = ""

  morse_message.split("   ").each do |word|
    _decoded_message = "#{_decoded_message}#{decode_morse_word(word)}"
  end

  _decoded_message
end