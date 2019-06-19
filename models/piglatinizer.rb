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
        else
          word[2..word.size].concat(word[0..2].concat("ay"))
        end
      else
        word.concat("way")
      end
    end.join(" ")
  end

end
