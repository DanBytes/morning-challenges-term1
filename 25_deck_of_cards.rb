# Create a Deck class that uses the Card class you created last time.
#
# Deck functionality
# A deck has a public attribute:
#
# cards: array of remaining cards in the deck.
#
# ...and three public methods:
#
# count(): count of remaining cards in the deck.
#
# shuffle(): randomize the order of the remaining cards in the deck.
#
# draw(n): remove the last n cards from the deck and return them in an array.
#
# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

require_relative '24_card_game'

class Deck
  attr_accessor :cards
  def initialize
    # Create a new array of cards
    @cards = []
    
    for i in 1..13
      #Pupulates deck with spades from rank 1 to 13
      @cards.push(Card.new(:spades, i))
      #Pupulates deck with clubs from rank 1 to 13
      @cards.push(Card.new(:clubs, i))
      #Pupulates deck with hearts from rank 1 to 13
      @cards.push(Card.new(:hearts, i))
      #Pupulates deck with diamonds from rank 1 to 13
      @cards.push(Card.new(:diamonds, i))
    end
  end

  def shuffle
    # Shuffle the remaining cards
    @cards.shuffle!
  end
  
  def draw(n=1)
    # Draw (remove) n cards from the deck. Return those cards
    return @cards.pop(n)
  end
  
  def count
    # How many cards are left?
    return @cards.length
  end
end

# deck =  Deck.new

# puts deck.cards