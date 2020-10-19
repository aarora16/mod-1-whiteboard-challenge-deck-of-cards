class Deck
  attr_accessor :cards

  @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  def initialize
    @cards = []
    @@ranks.each do |suit|
      @@suits.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    @cards.pop
  end
end

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
