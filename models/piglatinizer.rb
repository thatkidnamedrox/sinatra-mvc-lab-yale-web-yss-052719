class PigLatinizer

  def initialize()
  end

  def piglatinize(string)
    f = {vowel: lambda {|c| c =~ /[AEIOUaeiou]/ && c.is_a?(String)}}
    words = string.split(" ")
    words.map do |word|
      result = ""
      captialized = /[[:upper:]]/.match(word[0])
      if !f[:vowel].call(word[0])
        if f[:vowel].call(word[1])
          result = word[1..word.size].concat(word[0].concat("ay")).downcase
        else
          result = word[2..word.size].concat(word[0...2].concat("ay")).downcase
        end
      else
        result = word.concat("way").downcase
      end
      # result.downcase!
      binding.pry
      captialized ? result[0] = result[0].upcase : nil
      result
      # binding.pry
    end.join(" ")
  end

end
