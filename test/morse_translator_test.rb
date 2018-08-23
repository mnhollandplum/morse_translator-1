require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class MorseTranslatorTest < Minitest::Test

  def test_translator_exists
    morse_translator = MorseTranslator.new
    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_translate_downcase_text
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("hello world")
  end

  def test_translator_can_translate_capitalized_text
    morse_translator = MorseTranslator.new
    assert_equal "......-...-..--- .-----.-..-..-..", morse_translator.translate("Hello World")
  end

  def test_can_translate_text_with_integers
    morse_translator = MorseTranslator.new
    assert_equal "-......-.. .-.-.. ...-- ..........--....", morse_translator.translate("There are 3 ships")
  end

  def test_it_can_translate_morse_back_to_english
    morse_translator = MorseTranslator.new

    assert_equal "hello world", morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

  def test_it_can_translate_a_morse_word
    morse_translator = MorseTranslator.new

    assert_equal "helloworld", morse_translator.morse_word_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
