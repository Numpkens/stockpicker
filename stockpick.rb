def stock_picker(prices)
  max_profit = 0
  best_days = [0,0]

  prices.each_with_index do |buy_price, buy_day|
    # For each buy day, look at all future days
    (buy_day + 1...prices.length).each do |sell_day|
      sell_price = prices[sell_day]
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end

# Test it
puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect