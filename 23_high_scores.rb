# You just got done writing a function that calculates the player's final score
# for your new game.
#
# Now all you need is a high score table that can be updated with the player's final scores.
# With such a feature, the player will be motivated to try to beat his previous scores,
# and hopefully, never stop playing your game.
#
# The high score table will start out empty.
# A limit to the size of the table will be specified upon creation of the table.
#
# Here's an example of the expected behavior of the high score table :
#
# highScoreTable = HighScoreTable(3)
# highScoreTable.scores == [] # evaluates to True
# highScoreTable.update(10)
# highScoreTable.scores == [10]
# highScoreTable.update(8)
# highScoreTable.update(12)
# highScoreTable.update(5)
# highScoreTable.update(10)
# highScoreTable.scores == [12, 10, 10]
# highScoreTable.reset()
# highScoreTable.scores == []
# # And so on...

class HighScoreTable
  attr_accessor :scores
  def initialize (limit)
    @limit = limit
    @scores = []
  end
  
  def update(new_score)
    @scores.push(new_score).sort!.reverse! if @scores.length < @limit
    @scores.push(new_score).sort!.reverse!.pop() if @scores.length >= @limit
  end

  def reset
    @scores = []
  end
end

# highScoreTable = HighScoreTable.new(3)

# p highScoreTable.scores

# highScoreTable.update(33)
# p highScoreTable.scores

# highScoreTable.update(12)
# p highScoreTable.scores

# highScoreTable.update(37)
# p highScoreTable.scores

# highScoreTable.update(20)
# p highScoreTable.scores

# highScoreTable.update(24)
# p highScoreTable.scores