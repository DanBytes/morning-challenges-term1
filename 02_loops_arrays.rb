# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have

travel_time = 46

puts "Took me #{travel_time} minutes to get to the class"

#[ammount_ordered, sell_price, make_price]
cocktails = [0, 22, 8]
water = [0, 6, 0.15]
beers = [0, 12, 3]

customer_order = 0
order_limit = 1
puts "What drinks would you like to order (cocktail, water, beer)"
while customer_order < order_limit do
    print "> "
    user_input = gets.chomp.upcase

    case user_input
        when "COCKTAIL"
            cocktails[0] = cocktails[0] + 1
            customer_order += 1
            puts "You have ordered #{cocktails[0]} cocktails"
            puts "Would you like to order anything else? ( y / n)"
            user_input = gets.chomp.upcase

            if (user_input == 'Y')
                order_limit += 1
            else
                puts "Okay thank you for ordering"
            end
        
        when "BEER"
            beers[0] = beers[0] + 1
            customer_order += 1
            puts "You have ordered #{beers[0]} beers"
            puts "Would you like to order anything else? ( y / n)"
            user_input = gets.chomp.upcase

            if (user_input == 'Y')
                order_limit += 1
            else
                puts "Okay thank you for ordering"
            end

        when "WATER"
            water[0] = water[0] + 1
            customer_order += 1

            puts "You have ordered #{water[0]} water"
            puts "Would you like to order anything else? ( y / n)"
            user_input = gets.chomp.upcase

            if (user_input == 'Y')
                order_limit += 1
            else
                puts "Okay thank you for ordering"
            end
        else
            puts "I don't understand your order"
        end
end

puts "Items ordered #{customer_order}"
puts "Quantity: #{cocktails[0]}, Drink type: Cocktail"
puts "Quantity: #{water[0]}, Drink type: Water"
puts "Quantity: #{beers[0]}, Drink type: Beers"

profit_made = (cocktails[1] - cocktails[2]) + (water[1] - water[2]) + (beers[1] - beers[2])
puts "Total profit #{profit_made}"