require 'pry'
class MorseTranslator

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def translate(text)
    characters = text.chars
    morse_chars_array = characters.map do |character|
      @dictionary[character.downcase]
    end
    morse_chars_array.join
  end

  def morse_to_eng(morse)
   morse_words = morse.split("  ")
   morse_words.map do |morse_word|
     morse_word_to_eng(morse_word)
   end.join(" ")
  end

  def morse_word_to_eng(morse_word)
    morse_chars = morse_word.split
      morse_chars.map do |morse_char|
        reverse_dictionary[morse_char]
      end.join

  end

  def reverse_dictionary
    @dictionary.invert
  end

end
