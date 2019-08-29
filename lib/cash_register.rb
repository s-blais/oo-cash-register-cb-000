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

    discount_amount = (@total*@discount)/100
    @total -= discount_amount
    puts "After the discount, the total comes to $#{@total}."
  end

  def void_last_transaction

  end



end
