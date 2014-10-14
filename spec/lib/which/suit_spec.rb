require 'rails_helper'

describe Which::Suit do
  describe "default attributes" do
    subject { described_class.new("Spades") }

    it "should have an array with 13 cards" do
      expect(subject.cards).to be_a(Array)
      expect(subject.cards.size).to eq(13)
    end

    it "should have an Ace in the pack" do
      expect(subject.cards.first.to_s).to eq("The Ace of Spades")
    end
  end
end
