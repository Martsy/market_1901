require './lib/vendor'

class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name []
  end

  def add_vendor(vendors)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map{|vendor|vendor.name}
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.has_key?(item)
    end 
  end 

  def sorted_item_list
    list = @vendors.map {|vendor|vendory.inventory.keys}
  end 
