class Receipt

  attr_accessor :cart

  def initialize
  @cart = []
end

  def sub_total
    sub_total = 0
    @cart.each do |item|
      sub_total += item.cost
    end
    sub_total
  end

  def import_tax
    import_tax = 0
    @cart.each do |item|
      import_tax += item.import_tax
    end
    import_tax
  end

  def sales_tax
    sales_tax = 0
    @cart.each do |item|
      sales_tax += item.sales_tax
    end
    sales_tax
  end

  def tax_total
    tax_total = 0
    @cart.each do |item|
      tax_total += item.total_tax
    end
    tax_total
  end

  def total_cost
    tax_total + sub_total
  end

  def report
    puts
    puts
    puts "YOUR RECEIPT"
    print "You purchased the following item"
      if @cart.count <= 1
        print ""

      else
        print "s"
end

    print "..."
    puts
    puts
    @cart.each do |item|
      puts "Item: #{item.type} at $#{'%.2f' % item.cost}"
  end

    puts
    puts "Import Tax:  $#{'%.2f' % import_tax}"
    puts "Sales Tax:   $#{'%.2f' % sales_tax}"
    puts "Total Taxes: $#{'%.2f' % tax_total}"
    puts "Total:       $#{'%.2f' % total_cost}"
    puts
  end
end
