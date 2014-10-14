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
      case @face
      when 1
        "Ace"
      when 11
        "Jack"
      when 12
        "Queen"
      when 13
        "King"
      else
        @face
      end
    end

  end
end
