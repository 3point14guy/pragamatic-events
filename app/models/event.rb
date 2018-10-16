class Event < ApplicationRecord
  def free?
    # price == 0
    # above is original. below is improvement
    # if either conditon is met, the price will be zero
    # decided as a default, if price is blank, we'll assume price is free
    price.blank? || price.zero?
  end
end
