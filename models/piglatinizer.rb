class PigLatinizer

  def initialize()
  end

  def piglatinize(string)
    vowel = lambda {|c| c =~ /[aeiou]/}
    string.split(" ")

    stirng.map do |word|
      if !vowel(word[0])
        if vowel(word[1])
          word[1..word.size].concat(word[0].concat("ay"))
        end
      end
    end.join(" ")
  end

end
