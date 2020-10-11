=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end


module Calculate
  SCORES = {
    'AEIOULNRST' => 1,
    'DG' => 2,
    'BCMP' => 3,
    'FH, V, W, Y' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10
  }
  def calculate_score(word)
    if is_valid?(word)
      return word.to_s.split('')
        .map{ |k| getScore(k.upcase) }
        .reduce{ |a, b| a + b }
    else
      return 0
    end
  end

  def is_valid?(word)
    !word.to_s.strip.empty?
  end

  def getScore(letter)
    SCORES.each do |k, v|
      if k.include? letter
        return v
      end
    end
  end

  def score(word)
    calculate_score(word)
  end
end

class Scrabble
  include Calculate
  def initialize(word = '')
    @word = word
  end

  def score
    calculate_score(@word)
  end

  def self.score(word)
    self.new(word).score
  end
end





