class PigLatinizer

  def initialize()
  end

  def piglatinize(string)
    f = {vowel: lambda {|c| c =~ /[aeiou]/ && c.is_a?(String)}}
    words = string.split(" ")
    words.map do |word|
      result = ""
      captialized =
      if !f[:vowel].call(word[0])
        if f[:vowel].call(word[1])
          result = word[1..word.size].concat(word[0].concat("ay"))
        else
          result = word[2..word.size].concat(word[0..2].concat("ay"))
        end
      else
        result = word.concat("way")
      end


      binding.pry
    end.join(" ")
  end

end
