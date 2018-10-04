class Maze
    def initialize(maze)
        @maze = maze
        @x_pos = 0
        @y_pos = 0
        
        maze.each_index do |y|
            if maze[y].include?(2)
                @y_pos = y
                @x_pos = maze[y].index(2)
            end
        end
    end
    
    def walk(moves)
        for move in moves do
            if move == "N"
                @y_pos -= 1
            elsif move == "S"
                @y_pos += 1
            elsif move == "E"
                @y_pos += 1
            elsif move == "W"
                @y_pos -= 1
            end
            if can_move?(@maze[@y_pos][@x_pos]) == "Dead"
                return "Dead"
            elsif can_move?(@maze[@y_pos][@x_pos]) == "Finish"
                return "Finish"
            end
        end
        puts "Lost"
    end
    
    def can_move?(direction)
        case direction
        when 1
            return "Dead"
        when 3
            return "Finish"
        end
    end
end

# @maze = Maze.new([
#     [1,1,1,1,1,1,1],
#     [1,0,0,0,0,0,3],
#     [1,0,1,0,1,0,1],
#     [0,0,1,0,0,0,1],
#     [1,0,1,0,1,0,1],
#     [1,0,0,0,0,0,1],
#     [1,2,1,0,1,0,1]
# ])

# @maze.walk(["N","N","N","N","N","E","E","E","E","E"])