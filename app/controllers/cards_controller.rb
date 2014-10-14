class CardsController < ApplicationController
  def index
    @cards = Which::Deck.cards.shuffle!.map(&:to_s)
  end
end
