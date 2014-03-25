class Words

  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def count_number_of_word
    words = str.scan(/\w+/)
    count = {}
    words.each do |word|
      if !count.has_key?(word)
        count[word] = 0
      end
      count[word] += 1
    end
    count
  end


  def count_number_of_char
    chars = str.scan(/[a-zA-Z]/)
    chars_count = {}
    chars.each do |char|
      if !chars_count.has_key?(char)
        chars_count[char] = 0
      end
      chars_count[char] += 1
    end
    chars_count
  end


  def count_number_of_symbol
    syms = str.scan(/[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]/)
    syms_count = {}
    syms.each do |sym|
      if !syms_count.has_key?(sym)
        syms_count[sym] = 0
      end
      syms_count[sym] += 1
    end
    syms_count
  end

  def top_three_words
    words = count_number_of_word.sort_by {|k, v| v}
    [words[-1],
     words[-2],
     words[-3]]
  end

  def top_three_letters
    letters = count_number_of_char.sort_by{|k, v| v}
    [letters[-1],
     letters[-2],
     letters[-3]]
  end

end




