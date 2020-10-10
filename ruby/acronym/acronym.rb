class Acronym
  def self.abbreviate(phrase)
    phrase.split.map{ |term| term[0].upcase}.join
  end
end



Acronym.abbreviate('Hello Again')