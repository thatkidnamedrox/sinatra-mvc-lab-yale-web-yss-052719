class PigLatinizer

  def initialize()
  end

  def piglatinize(string)
    vowel = lambda {|c| c =~ /[aeiou]/}
    string.split(" ")

    stirng.map do |word|
      if !vowel(word.first)
      end
    end.join(" ")
  end

end
