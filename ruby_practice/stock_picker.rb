def stock_picker days

  # sets value of min to infinity. min will represent the value of our day to buy.
  min = 1.0/0.0
  # sets value of gain to negative infinity. gain will represent the amount earned for buying and selling.
  gain = -1.0/0.0
  # array for which days to buy and sell, respectively.
  buy_sell = []

  # loop through each of the days
  days.each_with_index do |day, index|

    # if day is less than min, assign min the value of day and assign it's index to the zeroth index of our buy sell array
    if day < min
      min = day
      buy_sell[0] = index

    # Other wise check if day is greater than min and if day minus min in greater than gain. If so, assign gain the value of day minus min. And assign the index to the first index of our buy sell array.
    elsif day > min && day - min > gain
      gain = day - min
      buy_sell[1] = index
    end
  end

  # We want to check if res is now finite. If so, we return our array with the days to buy and sell. Otherwise we'll simply return zero.
  if res.to_f.finite?
    buy_sell
  else
    0
  end
end
