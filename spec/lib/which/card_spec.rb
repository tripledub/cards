require 'rails_helper'

describe Which::Card do
  it "should have a human readable representation via to_s" do
    expect(described_class.new("Spades", 1).to_s).to eq("The Ace of Spades")
    expect(described_class.new("Diamonds", 11).to_s).to eq("The Jack of Diamonds")
    expect(described_class.new("Hearts", 12).to_s).to eq("The Queen of Hearts")
    expect(described_class.new("Clubs", 13).to_s).to eq("The King of Clubs")
  end
end
