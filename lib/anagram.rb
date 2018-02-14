class Anagram
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end

  def sort_characters(string)
     string.split("").sort
  end

  def english_check(word_one, word_two)
    if (@word_one && @word_two =~ /[aeiou]/)
      return true
    end
  end

  def palindrome(word_one, word_two)
   if (word_one.reverse == word_one)
     return "word one is a palindrome"
   elsif (word_two.reverse == word_two)
     return "word two is a palindrome"
   end
 end

  def anagram_checker(word_one, word_two)
    @word_one = " "
    @word_two = " "
    anagram_word1=sort_characters(word_one)
    anagram_word2=sort_characters(word_two)
    if anagram_word1 == anagram_word2
      return true
    end
  end

  def lowercase_checker(word_one, word_two)
    @word_one = "".downcase
    @word_two = "".downcase
    anagram_word1=sort_characters(word_two)
    anagram_word2=sort_characters(word_one)
    if anagram_word1 == anagram_word2
      return true
    end
  end

  def antigram_checker(word_one, word_two)
    @word_one = "test1"
    @word_two = "test2"
    anagram_word1=sort_characters(word_one)
    anagram_word2=sort_characters(word_two)
    if anagram_word1 != anagram_word2
      return false
    end
  end
end
