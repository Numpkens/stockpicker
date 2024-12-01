# Stock Picker

## Description
Stock Picker is a Ruby method that helps find the best days to buy and sell stocks for maximum profit. Given an array of stock prices representing daily prices, it determines the optimal days to buy and sell to maximize returns.

## Features
- Takes an array of daily stock prices as input
- Returns a pair of days (indices) representing the best days to buy and sell
- Ensures buy day comes before sell day
- Handles various edge cases
- Returns the most profitable combination

## Usage
```ruby
# Example usage:
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # Buy at $3 (day 1) and sell at $15 (day 4) for a profit of $12
```

## How It Works
1. The method iterates through each price as a potential buying price
2. For each buy price, it looks at all future prices as potential selling prices
3. Calculates the profit for each combination
4. Keeps track of the combination that yields the highest profit
5. Returns the indices of the best buying and selling days

## Input
- Array of integers representing daily stock prices
- Array indices represent days (starting from 0)

## Output
- Array containing two numbers: [buy_day, sell_day]
- These indices represent the most profitable days to buy and sell

## Example
```ruby
prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)
# Returns [1,4] because:
# - Buying on day 1 at price $3
# - Selling on day 4 at price $15
# - Yields maximum profit of $12
```
