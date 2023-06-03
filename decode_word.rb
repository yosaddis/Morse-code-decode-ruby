def decode_letter(morse_string)
  morse_code_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
    '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
    '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code_hash[morse_string]
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_letter(morse_char) }.join
end

def decode_message(morse_message)
  morse_message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end
