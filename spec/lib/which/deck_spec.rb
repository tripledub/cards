require 'rails_helper'

describe Which::Deck do
  describe "default attributes" do

    it "should have an array of 52 cards" do
      expect(described_class.cards).to be_a(Array)
      expect(described_class.cards.size).to eq(52)
    end

    it "should be possible to shuffle the deck of cards" do
      expect(described_class.cards).to respond_to(:shuffle!)
    end

    describe "Spades" do
      before :each do
        @spades = described_class.cards.select {|cards| cards.suit == "Spades" }
      end

      it "should have 13 Spades" do
        expect(@spades.size).to eq(13)
      end

      it "should have an Ace of Spades" do
        expect(@spades[0].to_s).to eq("The Ace of Spades")
      end
    end

    describe "Hearts" do
      before :each do
        @hearts = described_class.cards.select {|cards| cards.suit == "Hearts" }
      end

      it "should have 13 Hearts" do
        expect(@hearts.size).to eq(13)
      end

      it "should have an Queen of Hearts" do
        expect(@hearts[11].to_s).to eq("The Queen of Hearts")
      end
    end

    describe "Diamonds" do
      before :each do
        @diamonds = described_class.cards.select {|cards| cards.suit == "Diamonds" }
      end

      it "should have 13 Diamonds" do
        expect(@diamonds.size).to eq(13)
      end

      it "should have a Jack of Diamonds" do
        expect(@diamonds[10].to_s).to eq("The Jack of Diamonds")
      end
    end

    describe "Clubs" do
      before :each do
        @clubs = described_class.cards.select {|cards| cards.suit == "Clubs" }
      end

      it "should have 13 Clubs" do
        expect(@clubs.size).to eq(13)
      end

      it "should have a King of Diamonds" do
        expect(@clubs[12].to_s).to eq("The King of Clubs")
      end
    end
  end
end
