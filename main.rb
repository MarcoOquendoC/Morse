# frozen_string_literal: true

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?',
  '.----.' => "'",
  '-.-.--' => '!',
  '-..-.' => '/',
  '-.--.' => '(',
  '-.--.-' => ')',
  '.-...' => '&',
  '---...' => ':',
  '-.-.-.' => ';',
  '-...-' => '=',
  '.-.-.' => '+',
  '-....-' => '-',
  '..--.-' => '_',
  '.-..-.' => '"',
  '...-..-' => '$',
  '.--.-.' => '@'
}.freeze

def char_decoder(char_string)
  MORSE_CODE[char_string]
end

def word_decoder(word_string)
  word_string.split.map do |char|
    char_decoder(char)
  end.join
end

def str_decoder(string)
  string.split('   ').map do |word|
    word_decoder(word)
  end.join(' ')
end

p str_decoder('-- -.--   -. .- -- .')
