class CashRegister

  attr_accessor :cash_register, :items, :cash_register_with_discount, :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = {}
  end

  def total
    @total
  end

  def add_item (title, price, quantity = 1)
    @total += price*quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else discount_amount = (@total*@discount)/100
      @total -= discount_amount
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction

  end



end
