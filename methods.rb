def draw_line(length = 25)
    puts "-" * length
end

def prep_water
    puts "- Fill sauce pan with water"
    puts "- Place saucepan on stove"
    puts "- Bring water to boil"
end

def coock_time(minutes)
    puts "- Cook for #{minutes} minutes"
end

def how_to_cook(dish, time)
    heading = puts "How to cook #{dish}"
    draw_line(heading.length)
    draw_line
    prep_water
    puts "- Add #{dish}"
    coock_time(9)
end

how_to_cook("pasta", 9)
how_to_cook("rice", 15)