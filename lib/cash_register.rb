class CashRegister

  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item (title, price, quantity = 1)
    @total += price*quantity
  end

  def apply_discount

    discount_amount = ()@total*@discount)/100
    @cash_register_with_discount = @total - discount_amount
  end

  def void_last_transaction

  end



end
