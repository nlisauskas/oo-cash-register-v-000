class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @last_item = price

    while quantity > 0
      @items << title
      quantity -= 1
    end
  end

end
