class Card
    include Comparable
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        # Create a new card
        @suit = suit
        @rank = rank
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        return @rank > 10
    end 
    
    def to_s
        string_builder = ""
        case @rank
        when 1
            string_builder += "Ace" 
        when 11
            string_builder += "Jack"
        when 12
            string_builder += "Queen"
        when 13
            string_builder += "King"
        else
            string_builder += "#{@rank}"
        end
        
        string_builder += " of "
        string_builder += "#{@suit}".capitalize
        
        return string_builder
    end
    
    def <=>(other)
        @rank <=> other.rank
    end
end


queen_of_spades = Card.new(:spades, 12)
ten_of_clubs = Card.new(:clubs, 10)
ace_of_diamonds = Card.new(:diamonds, 1)

p queen_of_spades > ten_of_clubs