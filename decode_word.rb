def decode_word(morse_string)
  morse_db = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
               '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
               '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
               '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
               '-.--' => 'Y', '--..' => 'Z' }
  normal_string = ''
  morse_char = ''
  space = 0
  for i in 0..morse_string.length - 1
    if morse_string[i] != ' '
      morse_char = morse_char + morse_string[i]
      space = 0
    else
      space = space + 1
      if (morse_char.strip != nil)
        if morse_db[morse_char.strip] != nil
          normal_string = normal_string + morse_db[morse_char.strip]
        end
      end
      if (space == 3)
        normal_string = normal_string + ' '
        space = 0
      end
      morse_char = ''
    end
  end
  normal_string += morse_db[morse_char.strip]
  return normal_string
end
