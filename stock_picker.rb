def stock_picker(prices)

    auxiliar = prices.clone
    best_time_to_buy = nil
    best_time_to_sell = nil
    max_profit = 0 

    prices.each_with_index do |buy_price, buy_day|
    auxiliar.shift
    auxiliar.each_with_index do |sell_price, sell_day|

        if (sell_price - buy_price) > max_profit
        max_profit = sell_price - buy_price
        best_time_to_buy = buy_day
        best_time_to_sell = buy_day + sell_day + 1
        
        end
    end
    end

    return  [best_time_to_buy,best_time_to_sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])