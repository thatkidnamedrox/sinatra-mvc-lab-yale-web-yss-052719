class PigLatinizer

  def initialize()
  end

  def piglatinize(string)
    f = {vowel: lambda {|c| c =~ /[aeiou]/ && c.is_a?(String)}}
    words = string.split(" ")
    words.map do |word|
      if !f[:vowel](word[0])
        if f[:vowel](word[1])
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
