require 'minitest\autorun'
require_relative "counter"

class CounterTest < MiniTest::Unit::TestCase

  def test_initialize_counter
    counter=Counter.new
    refute_nil(counter)
  end
  
  def test_count_words
    counter=Counter.new
    counter.count_words("The string we care about")
    assert_equal(5,counter.wcount)
  end

  def test_count_words_multiple_lines
    counter=Counter.new
    counter.count_words("The string we care about")
    counter.count_words("The string we care about")
    assert_equal(10,counter.wcount)
  end

  def test_count_punctuation
    counter=Counter.new
    counter.count_punctuation("I was, like, oh'm'gosh!")
    assert_equal(5,counter.pcount)
  end

  def test_count_punctuation_multiple_lines
    counter=Counter.new
    counter.count_punctuation("I was: like, ohm?gosh!")
    counter.count_punctuation("I was~ like; ohm'gosh!")
    assert_equal(8,counter.pcount)
  end

  def test_replace_spaces
    counter=Counter.new
    counter.replace_spaces("do you know the muffin man?")
    assert_equal("do~you~know~the~muffin~man?",counter.hyph)
  end

  def test_replace_spaces_multiple_lines
    counter=Counter.new
    counter.replace_spaces("do you know,\n")
    counter.replace_spaces("the muffin man?")
    assert_equal("do~you~know,\nthe~muffin~man?",counter.hyph)
  end
 
  def test_to_upcase
    counter=Counter.new
    counter.to_upcase("Y'all, how're you doin'?")
    assert_equal(["Y'ALL,","HOW'RE","YOU","DOIN'?"],counter.upcs)
  end

  def test_alphabetize
    counter=Counter.new
    counter.alphabetize("So, you think YOU can dance? yo?")
    assert_equal(["can","dance?","So,","think","yo?","you","YOU"],counter.alph)
  end

  def test_alphabetize_multiple_lines
    counter=Counter.new
    counter.alphabetize("So, you think YOU can dance? yo?")
    counter.alphabetize("ya rock!")
    assert_equal(["can","dance?","rock!","So,","think","ya","yo?","you","YOU"],counter.alph)
  end


  def test_separate_lines
    counter=Counter.new
    counter.separate_lines("How are you today?")
    assert_equal(["How","are","you","today?"],counter.split)
  end

end

