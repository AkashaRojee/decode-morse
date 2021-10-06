# Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

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

# Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation. Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").

def decode_morse_word(morse_word)
  _decoded_word = ""

  morse_word.split(" ").each do |char|
    _decoded_word = "#{_decoded_word}#{decode_morse_char(char)}"
  end

  _decoded_word
end