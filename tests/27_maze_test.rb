require 'test/unit'
require_relative '../27_maze'

class TestMaze < Test::Unit::TestCase
    def setup
        # We enter the maze at 2 and exit at 3
        @maze = Maze.new([
            [1,1,1,1,1,1,1],
            [1,0,0,0,0,0,3],
            [1,0,1,0,1,0,1],
            [0,0,1,0,0,0,1],
            [1,0,1,0,1,0,1],
            [1,0,0,0,0,0,1],
            [1,2,1,0,1,0,1]
        ])    
    end
    # If we reach number 3, we've finished the maze
    def test_finish_route_1
        assert_equal("Finish", @maze.walk(["N","N","N","N","N","E","E","E","E","E"]))
    end
    def test_finish_route_2
        assert_equal("Finish", @maze.walk(["N","N","N","N","N","E","E","S","S","E","E","N","N","E"]))
    end
    def test_finish_route_3
        assert_equal("Finish", @maze.walk(["N","N","N","N","N","E","E","E","E","E","W","W"]))
    end
    # Test for finish should ignore extra moves
    def test_finish_on_tenth_move
        puts "Finish Test"
        # Will return "Dead" if it doesn't ignore the 11th move, as we'll fall off the edge
        assert_equal("Finish", @maze.walk(["N","N","N","N","N","E","E","E","E","E","E"]))
    end
    # Should be possible to finish without doing it all in a single walk
    def test_finish_multiple_walks
        puts "Multiple walks Test"
        assert_equal("Lost", @maze.walk(["N","N","N","N","N"]))
        assert_equal("Finish", @maze.walk(["E","E","E","E","E"]))
    end
    # If we go off the edge of the maze, we're dead!
    def test_dead_1
        assert_equal("Dead", @maze.walk(["N","N","N","W","W"]))
    end
    def test_dead_2
        assert_equal("Dead", @maze.walk(["N","N","N","N","N","E","E","S","S","S","S","S","S"]))
    end
    # Remaining moves should be ignored if we fell off the maze before the end of the walk
    def test_dead_on_fifth_move
        puts "Dead Test"
        assert_equal("Dead", @maze.walk(["N","N","N","W","W","E","E","N"]))
    end
    # If we didn't finish or die by the end of the walk, we're lost in the maze!
    def test_lost_1
        assert_equal("Lost", @maze.walk(["N","E","E","E","E"]))
    end
    def test_lost_2
        assert_equal("Lost", @maze.walk(["N","E","E","N"]))
    end
    # Walls carry high voltage, so if we touch one, we're dead!
    def test_hit_wall_1
        assert_equal("Dead", @maze.walk(["N","W","W","E","E"]))
    end
    def test_hit_wall_2
        assert_equal("Dead", @maze.walk(["N","N","N","N","N","E","E","E","E","N","N","E"]))
    end
end