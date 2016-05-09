
class SodaMachine
  attr_reader :sodas, :cash
  attr_accessor :soda_count

  @@soda_count = 0

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @@soda_count += @sodas.length
  end

  def current_inventory_count
    @@soda_count
  end

  def find_soda(soda_brand)
    @sodas.each do |brand|
      if brand == soda_brand
        return soda_brand
      end
      return soda_brand
    end
  end

  def sell(soda_brand)
    @sodas.delete_if do |brand|
      if brand == soda_brand
      return @cash
      end
    end    
  end

end