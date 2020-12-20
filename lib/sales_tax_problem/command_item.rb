# frozen_string_literal: true

class CommandItem
  attr_reader :quantity, :product

  def initialize(product: nil, quantity: nil)
    @product = product
    @quantity = quantity
  end

  def total_ttc
    @product.prix_ttc * @quantity
  end
end
