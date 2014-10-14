module Which
  class Suit

    attr_reader :name, :cards

    def initialize(name)
      @name = name
      @cards ||= []
      build_suit
    end

    private

    def build_suit
      (1..13).to_a.each do |i|
        @cards << Which::Card.new(name, i)
      end
    end
  end
end
