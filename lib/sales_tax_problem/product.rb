# frozen_string_literal: true

class Product
  attr_reader :name, :type, :price

  def initialize(name: nil, type: nil, price: nil, import_type: ImportType.not_imported)
    @name = name
    @type = type
    @price = price
    @import_type = import_type
  end

  def prix_ttc
    @price + basic_tax + import_tax
  end

  def basic_tax
    ((@type.tax_percentage * @price) * 20).round / 20.0
  end

  def import_tax
    ((@import_type.tax_percentage * @price) * 20).round / 20.0
  end
end
