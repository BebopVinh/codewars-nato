ALPHABET = %w(Alpha Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliet Kilo Lima Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey XRay Yankee Zulu Zero One Two Tree Four Fife Six Seven Eight Niner)

def nato(message)
  array = message.chars
  answer = []
  array.each do |character|
    x = nil
    if !!(character.match(/\d/))
      x = ALPHABET[26..35].find {|word| ALPHABET.index(word) - 26 == character.to_i}
    else
      x = ALPHABET[0..25].find {|word| word[0] == character.upcase}
    end
    answer << x if x != nil
  end
  answer.reject(&:empty?).join(" ")
end
