def stock_picker(array)
  array_best_to_buy = Array.new(2, 1)
  profit = 0

  min_price = array[0]
  min_index = 0

  array.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      array_best_to_buy = [min_index, index]
    end
  end

  array_best_to_buy
end

array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts stock_picker(array)
