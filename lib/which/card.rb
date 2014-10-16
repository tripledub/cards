module Which
  class Card

    attr_reader :suit, :face

    def initialize(suit,face)
      @suit = suit
      @face = face
    end

    def to_s
      "The #{face} of #{suit}"
    end

    private

    def face
      faces = { 1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King" }
      faces[@face] || @face
    end
  end
end
