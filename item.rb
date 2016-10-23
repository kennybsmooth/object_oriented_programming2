class Item

attr_accessor :sales_tax, :import_tax, :cost, :imported, :type

  def initialize(type,cost,imported, receipt)
    @type = type
    @cost = cost
    @imported = imported

    @cost.to_f
    @type.to_s

    sales_tax
    import_tax

    receipt.cart << self
  end

  def sales_tax
    if @type == "BOOKS" || @type == "FOOD" || @type == "MEDICINE"
      @sales_tax  = 0
    else
      @sales_tax  = @cost * 0.1
    end
  end


def import_tax
    if @imported
      @import_tax  = @cost * 0.05
    else
      @import_tax  = 0
    end
  end

  def total_tax
    @sales_tax + @import_tax
  end

  def total_cost
    @cost + total_tax
  end
end
