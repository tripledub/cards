module Which
  class Deck
    class << self
      def cards
        deck = []
        %w(Spades Hearts Diamonds Clubs).each do |suit|
          Which::Suit.new(suit).cards.each do |card|
            deck << card
          end
        end
        deck
      end
    end
  end
end
