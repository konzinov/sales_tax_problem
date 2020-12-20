class TypeWithTax < Type
  class << self
    def other
      @other = new(name: 'other', tax_percentage: 0.1)
    end
  end
end